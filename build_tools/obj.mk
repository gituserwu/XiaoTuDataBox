
CFLAGS += ${DEBUG} -std=gnu99 -D_GNU_SOURCE ${INCLUDE_PATH}
CPPFLAGS += ${DEBUG} -std=c++11 ${INCLUDE_PATH}

C_FILE = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o,$(notdir ${C_FILE}))

CPP_FILE = $(wildcard *.cpp)
OBJ += $(patsubst %.cpp, %.o,$(notdir ${CPP_FILE}))

.PHONY: all clean

objs: ${OBJ}
	@echo ${OBJ}

FORCE:

%.o:%.c
	gcc $(CFLAGS) $(DEBUG) -c $< -o $@

%.o:%.cpp
	g++ $(CPPFLAGS) $(DEBUG) -c $< -o $@



