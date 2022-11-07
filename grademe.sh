
################################################################################
#                                                                              #
#                                  VARIABLES                                   #
#                                                                              #
################################################################################

##############################
#	Path
##############################

LIBFT_Path="../Libft/"

INC_Path="includes/"

TESTS_Path="srcs/"

##############################
#	Files
##############################

char_test_files="test_isalnum.c	test_isalpha.c \
	test_isascii.c test_isdigit.c test_isprint.c \
	test_tolower.c test_toupper.c"

str_test_files="test_strchr.c test_strlcat.c test_strlcpy.c \
	test_strlen.c test_strncmp.c test_strnstr.c test_strrchr.c"

##############################
#	Commands
##############################

cc=gcc

flags="-Wall -Werror -Wextra"

##############################
#	Colors
##############################

White='\033[0;39m'
BUWhite='\e[1;4m'
BRed='\033[1;31m'
BGreen='\033[1;92m'
BYellow='\033[1;93m'
BBlue='\033[1;34m'
BBlueL='\e[1;94m'
BUBlue='\e[1;4;34m'
BUCyan='\e[1;4;36m'
BGrey='\e[1;90m'
BMagenta='\e[1;35m'

################################################################################
#                                                                              #
#                                  FUNCTIONS                                   #
#                                                                              #
################################################################################

function print_ok {
	echo -e -n "$BGreen[OK]$White"
}

function print_ko {
	echo -e -n "$BRed[KO]$White"
}

function 	print_not_compile {
	echo -e -n "${BRred}Does not compile${White}"
}

function launch_norminette {
	echo -e "${BUBlue}Run norminette:${White} "
	norminette ${LIBFT_Path}
	result_norm=$?
	if [ $result_norm = 127 ]; then
		echo -e "        ${BYellow}[NOT_FOUND]${White}"
	elif [ $result_norm = 0 ]; then
		echo -e "        ${BGreen}[OK]${White}"
	elif [ $result_norm = 1 ]; then
		echo -e "        ${BRed}[KO]${White}"
	fi
	echo -e ""
}

function	create_libft_a {
	echo -e "${BUBlue}Run make:${White} "
	make re -C ${LIBFT_Path}
	result_make=$?
	if [ $result_make = 0 ]; then
		echo -e "		${BGreen}[OK]${White}"
	else
		echo -e "		${BRed}[KO]${White}"
	fi
	echo -e
}

function	create_libft_a_debug {
	make -C ${LIBFT_Path}
}

function	compile_test {
	$cc $flags $1 -I${LIBFT_Path} -I${INC_Path} -L${LIBFT_Path} -l:libft.a -o test
}

function	test_char_function {
	echo -e "\n"
	echo -e "${BUCyan}Test char functions:${White}\n"
	for file in ${char_test_files}
	do
		echo -e -n "	${BGrey}${file}: ${WHITE}"
		compile_test ${file/#/${TESTS_Path}}
		if [ $? = 0 ];then
			./test
			if [ $? = 0 ]; then
				print_ok
			else
				print_ko
			fi
		else
			print_not_compile
		fi
		echo -e
	done
}

function	test_char_function {
	echo -e "\n"
	echo -e "${BUCyan}Test char functions:${White}\n"
	for file in ${str_test_files}
	do
		echo -e -n "	${BGrey}${file}: ${WHITE}"
		compile_test ${file/#/${TESTS_Path}}
		if [ $? = 0 ];then
			./test
			if [ $? = 0 ]; then
				print_ok
			else
				print_ko
			fi
		else
			print_not_compile
		fi
		echo -e
	done
}

################################################################################
#                                                                              #
#                                   SCRIPT                                     #
#                                                                              #
################################################################################

clear
launch_norminette
create_libft_a_debug
test_char_function
