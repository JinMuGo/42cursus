# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/07/17 15:12:53 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./make_config/com/Color.mk
include ./make_config/com/Flags.mk

DIRS :=	cpp_modules \
		fdf \
		ft_printf \
		libft \
		miniRT \
		minishell \
		philo \
		pipex \
		push_swap \
		webserv \
		ft_transcendence

$(DIRS):
	$(MAKE) -C $@ $(J)

all bonus :
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start making each directory)
	$(MAKE) $(DIRS)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ All directory compiled!)

clean fclean re:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

.PHONY: all clean fclean re bonus $(DIRS)
