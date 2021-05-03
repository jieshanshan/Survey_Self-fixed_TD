# Replication Package - **Do practitioners repay their own Technical Debt?**

This repository contains the replication package of the study reported in the paper:

**Do practitioners repay their own Technical Debt?**


## Content

The following table describes the content of each file in this package.

- `Dataset.csv`\
  The responses of the participants, including the coded reasons to introduce and self-fix technical debt (TD).

- `Invitation_Text.pdf`\
  The text of the email invitation sent to practitioners. It mentions the motivation and goal of this study, the targeted open-source project, and its main programming language. This particular form was sent out to the members of the project TensonFlow.

- `Questionnaire.pdf`\
  The questionnaire (Google Form) used in the survey. This particular form was sent out to the members of the project TensonFlow. Due to the page limit, we did not use the responses for questions 1, 10, 16 and 17.

- `RQ1_familiar.R`\
  R script to generate Fig.2: Respondents' knowledge level of technical debt. 

- `RQ1_familiar.csv`\
  The dataset used to generate Fig.2: Respondents' knowledge level of technical debt.

- `RQ1_types.R`\
  R script to generate Fig.3: Distribution of self-fixed TD types. 

- `RQ1_types.csv`\
  The dataset used to generate Fig.3: Distribution of self-fixed TD types. 

- `RQ2_introduce_reasons.csv`\
  Dataset with the mapping between the reasons to introduced TD as provided by practitioners and the coded reasons (used in `Dataset.csv`).

- `RQ2_self-fix_reasons.csv`\
  Dataset with the mapping between the reasons to self-fix TD as provided by practitioners and the coded reasons (used in `Dataset.csv`).

- `RQ2_relationship_chord.R`\
  R script to generate Fig.7: Association between reasons. 

- `RQ2_relationship_chord.csv`\
  The dataset used to generate Fig.7: Association between reasons.  

- `RQ3_demographic.R`\
  R script to generate Fig.8: The percentages of how often participants in each demographic group have self-fixed TD, and Fig.9: The percentages of self-fixing certainty levels for participants in each demographic group.

- `RQ3_demographic_frequency.csv`\
  The dataset used to generate Fig.8: The percentages of how often participants in each demographic group have self-fixed TD.

- `RQ3_demographic_certainty.csv`\
  The dataset used to generate Fig.9: The percentages of self-fixing certainty levels for participants in each demographic group.

- `Statistical_tests.R`\
  R script to conduct all the statistical tests mentioned in the paper.

- `Statistical_tests.xlsx`\
  The dataset used to conduct all the statistical tests mentioned in the paper.
