library("dplyr")
library("ggplot2")
library("cowplot")
theme_set(theme_cowplot())
vims_1 <- tibble::tibble(s = "1", k = 1:5,
                         vim = c(1:5 * 0.1))
vims_2 <- tibble::tibble(s = "2", k = 1:5,
                         vim = rep(0.8, 5))
vims_3 <- tibble::tibble(s = "3", k = 1:5,
                         vim = c(2:0 * 0.1, rep(0, 2)))
all_vims <- tibble::as_tibble(rbind.data.frame(vims_1, vims_2, vims_3))
longitudinal_vim_plot <- all_vims %>%
  ggplot(aes(x = k, y = vim, shape = s)) +
  geom_point(size = 3) +
  geom_line(linetype = "dashed") +
  labs(x = "Time point", y = "True VIM", shape = "Feature of interest") +
  theme(legend.position = "bottom", legend.direction = "horizontal")
ggsave(here::here("img", "lvim_example.png"),
       longitudinal_vim_plot, width = 4, height = 3, units = "in", dpi = 300)
