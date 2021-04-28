ggplot() +
  geom_linerange(data = RQ1_familiar, 
                 aes(x = Type, 
                     ymin = StartPercent, 
                     ymax = EndPercent,
                     color = as.factor(Standard)),
                 size = 6)+
  guides(color = guide_legend(override.aes = list(size = 6),keyheight =1,title = NULL))+
  
  
  scale_color_manual(breaks = 6:1,
                     labels = rev(c("","","","","","")),
                     values = c("#f78873","#efefef","#67a9cf","#67a9cf","#efefef","#f78873")
                    )+
  coord_flip()+
  geom_hline(aes(yintercept = 0),alpha = 0.35,size = 0.5)+
  scale_y_continuous(name = NULL, limits = c(-0.50,0.52),labels = scales::percent)+
  scale_x_discrete(name = NULL)+
  theme_minimal()+
  theme(
    panel.grid.minor = element_blank(),
    axis.text.x = element_text(angle = 0, size = 13, hjust = 1,vjust = 0.5),
    axis.text.y = NULL,
    axis.title.x = element_text(size = 13),
    legend.position = "bottom",
    legend.text = element_text(size = 13),
    legend.spacing.x = unit(0.7, 'cm'))

