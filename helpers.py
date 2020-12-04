import os
import re
import zipfile

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


def fix_code_indentation(linesfile):
  with open(linesfile) as f:
    lines = f.readlines()
  while '"' not in [l[0] for l in lines]:
    lines = [l[1:] for l in lines]
  lines = [" "*15+re.sub(r'^(\s*?)("\s*\S)', r"\2\1", l).replace("\t"," ") for l in lines]
  with open(linesfile, "w") as f:
    f.writelines(lines)


if __name__ == "__main__":
    fire.Fire()

# pipenv run python utils.py merge_surveys Java_json.zip
# pipenv run python utils.py fix_code_indentation code-lines.txt