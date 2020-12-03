import csv
import json
import os
import ssl
import secrets
import zipfile
from urllib import request, parse

import fire


def merge_surveys(path):
  surveys = []
  
  if path.endswith(".zip"):
    with zipfile.ZipFile(path) as file:
      for name in file.namelist():
        if name.endswith(".json"):
          # print(name)
          with file.open(name=name, mode='r') as jsonfile:
            surveys.append(json.load(jsonfile))
  
  elif os.path.isdir(path):
    for dirpath, _, files in os.walk(path):
      for name in files:
          if name.lower().endswith(".json"):
            # print(os.path.join(dirpath, name))
            with open(os.path.join(dirpath, name)) as jsonfile:
              surveys.append(json.load(jsonfile))

  return surveys


def upload_surveys(jsonfile, token="the-very-secretive-phrase", remote=True):
  if remote:
    app_url = "https://sftd.danielfeitosa.cc"
  else:
    # localhost (disable certificate checking)
    app_url = "https://localhost:5000"
    ssl._create_default_https_context = ssl._create_unverified_context

  # load survey
  with open(jsonfile) as f:
    test_survey = json.load(f)
  
  restore_data = {"force":"y", "surveys":json.dumps(test_survey)}
  url = f"{app_url}/restore"
  headers={"Authorization": f"Bearer {token}", 'User-Agent': 'Mozilla/5.0'}
  data = parse.urlencode(restore_data).encode('utf-8')

  req = request.Request(url, headers=headers)
  res = request.urlopen(req, data)
  print(res.read())


def collect_answers(remote=True,token="the-very-secretive-phrase"):
  if remote:
    app_url = "https://sftd.danielfeitosa.cc"
  else:
    # localhost (disable certificate checking)
    app_url = "https://localhost:5000"
    ssl._create_default_https_context = ssl._create_unverified_context

  url = f"{app_url}/backup"
  headers={"Authorization": f"Bearer {token}", 'User-Agent': 'Mozilla/5.0'}

  req = request.Request(url, headers=headers)
  res = request.urlopen(req, parse.urlencode({}).encode('utf-8'))
  print(json.dumps(json.loads(res.read())["surveys"], indent=4, sort_keys=True))


def generate_codes(jsonfile):
  with open(jsonfile) as f:
    surveys = json.load(f)
  
  for s in surveys:
    s["code"] = "".join(secrets.token_urlsafe(8))
  
  with open(jsonfile, "w") as f:
    json.dump(surveys, f, indent=4)


def generate_contacts(jsonfile, url_base="https://sftd.danielfeitosa.cc"):
  with open(jsonfile) as f:
    surveys = json.load(f)

  with open(jsonfile.replace(".json", ".csv"), "w") as csvfile:
    writer = csv.DictWriter(csvfile, ["email", "name", "link"])
    writer.writeheader()  
    
    for s in surveys:
      writer.writerow({
        "email": s["email"],
        "name": s["name"].split(" ")[0],
        "link": f"{url_base}/survey?code={s['code']}"
      })


if __name__ == "__main__":
    fire.Fire()

# pipenv run python utils.py merge_surveys Java_json.zip
# pipenv run python utils.py upload_surveys test-survey.json
# pipenv run python utils.py collect_answers
# pipenv run python utils.py generate_codes python-surveys.json
# pipenv run python utils.py generate_contacts python-surveys.json
