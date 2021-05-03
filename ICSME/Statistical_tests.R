#RQ1_familiarity
#Wilcoxon Rank Sum test and Cliff's Delta Effect Size
#import RQ1_familarity from Statistical_tests.xlsx
library(effsize)
wilcox.test(RQ1_familarity$Java,RQ1_familarity$Python)
cliff.delta(RQ1_familarity$Java,RQ1_familarity$Python)
#p-value = 0.01968
#delta estimate: 0.1468002

#RQ1_attitudes
#Scott-Knott ESD test
#import RQ1_attitudes from Statistical_tests.xlsx
library(ScottKnottESD)
sk_esd(RQ1_attitudes, version="np")

#RQ1_types_Java
#Scott-Knott ESD test
#import RQ1_Java_type from Statistical_tests.xlsx
sk_esd(RQ1_Java_type, version="np")

#RQ1_types_Python
#Scott-Knott ESD test
#import RQ1_Python_type from Statistical_tests.xlsx
sk_esd(RQ1_Python_type, version="np")

#RQ2_Heatmap
#Wilcoxon Signed Rank test
#import RQ2_Heatmap from Statistical_tests.xlsx
wilcox.test(RQ2_Heatmap$Java,RQ2_Heatmap$Python,paired=T)
#p-value = 0.293

#RQ3_Roles
#positive frequency
#Fisher's exact test
grp.size <- c(100,100)
self <- c(85,96)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("Dev","PM"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Roles
#negative frequency
#Fisher's exact test
grp.size <- c(100,100)
self <- c(11,2)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("Dev","PM"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Contributions-to-the-projects
#positive frequency
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(98,87,80)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("ContribHigh","ContribMed","ContribLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Contributions-to-the-projects
#negative frequency
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(2,9,14)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("ContribHigh","ContribMed","ContribLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Contributions-to-the-projects
#Definitely and Probably yes
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(80,55,43)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("ContribHigh","ContribMed","ContribLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Contributions-to-the-projects
#Definitely and Probably not
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(10,27,42)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
      Self = c("Yes","No"),
      Groups = c("ContribHigh","ContribMed","ContribLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Project-experience
#positive frequency
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(93,89,79)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
  Self = c("Yes","No"),
  Groups = c("ExpProHigh","ExpProMed","ExpProLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#RQ3_Project-experience
#negative frequency
#Fisher's exact test
grp.size <- c(100,100,100)
self <- c(4,7,18)
non_self <- grp.size - self
tab <- as.table(rbind(self, non_self))
dimnames(tab) <- list (
  Self = c("Yes","No"),
  Groups = c("ExpProHigh","ExpProMed","ExpProLow"))
tab
pairwise_fisher_test(tab, p.adjust.method = "holm")

#Threats to validity
#Krippendorff's alpha
#import Krippendorff from Statistical_tests.xlsx
library(irrCAC)
krippen.alpha.raw(Krippendorff,conflev = 0.95)


