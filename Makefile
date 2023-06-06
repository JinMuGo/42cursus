# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/06/06 16:35:22 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./make_config/com/ColorRules.mk

DIRS :=	cpp_modules \
		fdf \
		ft_printf \
		libft \
		minishell \
		philo \
		pipex \
		push_swap

$(DIRS):
	$(MAKE) -C $@

all bonus :
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start compiling each directory)
	$(MAKE) $(DIRS)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ All directory compiled!)

clean fclean re:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

.PHONY: all clean fclean re bonus $(DIRS)
