ggplot() +
  geom_linerange(data = RQ3_demographic_frequency, 
                 aes(x = reorder(Type, Order),
                     ymin = StartPercent, 
                     ymax = EndPercent,
                     color = as.factor(Standard)),
                     size = 5)+
  guides(color = guide_legend(override.aes = list(size = 6),keyheight =1,title = NULL))+
  
  scale_color_manual(breaks = 6:1,
                     labels = rev(c("","","","","","")),
                     values = c("#4682B4","#D1E5F0","#EFEFEF","#FDDBC7","#F78873","#D6604D"))+
  geom_hline(aes(yintercept = 0),alpha = 0.35,size = 0.5)+
  scale_y_continuous(name = NULL, limits = c(0,1),labels = scales::percent)+
  scale_x_discrete(name = NULL)+
  theme_minimal()+
  theme( 
    panel.grid.minor = element_blank(),
    axis.text.x = element_text(angle = 45, size = 13, hjust = 1,vjust = 0.5),
    axis.text.y = NULL,
    axis.title.x = element_text(size = 13),
    legend.position = "bottom",
    legend.text = element_text(size = 13),
    legend.spacing.x = unit(0.7, 'cm')
    )



ggplot() +
  geom_linerange(data = RQ3_demographic_certainty, 
                 aes(x = reorder(Type, Order), 
                     ymin = StartPercent, 
                     ymax = EndPercent,
                     color = as.factor(Standard)),
                     size = 5)+
  guides(color = guide_legend(override.aes = list(size = 6),keyheight =1,title = NULL))+

  scale_color_manual(breaks = 5:1,
                     labels = rev(c("","","","","")),
                     values = c("#4682B4","#d1e5f0","#efefef","#fddbc7","#f78873"))+
  
  geom_hline(aes(yintercept = 0),alpha = 0.35,size = 0.5)+
  scale_y_continuous(name = NULL, limits = c(0,1.02),labels = scales::percent)+
  scale_x_discrete(name = NULL)+
  theme_minimal()+
  theme(
    panel.grid.minor = element_blank(),
    axis.text.x = element_text(angle = 45, size = 13, hjust = 1,vjust = 0.5),
    axis.text.y = NULL,
    axis.title.x = element_text(size = 13),
    legend.position = "bottom",
    legend.text = element_text(size = 13),
    legend.spacing.x = unit(0.7, 'cm')
    )

