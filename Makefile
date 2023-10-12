CC = gcc
CFLAGS  = -Wall
LBFLAGS = -lm

TARGET

SRCDIR = ./C/src
INCDIR = ./C/include
OBJDIR = ./bin/c_lang

SRCS = $(TARGET:=.c)
INCS = 

INCCODE = $(addprefix $(INCDIR)/, $(INCS))
SRCCODE = $(addprefix $(SRCDIR)/, $(SRCS))
INCOBJS = $(addprefix $(OBJDIR)/, $(INCS:.c=.o))
SRCOBJS = $(addprefix $(OBJDIR)/, $(SRCS:.c=.o))

$(TARGET) : $(TARGET:=.exe)
	@$(OBJDIR)/$^

$(TARGET:=.exe) : $(INCOBJS) $(SRCOBJS)
	@$(CC) $(CFLAGS) $(LBFLAGS) $^ -o $(OBJDIR)/$@

$(INCOBJS) : $(INCCODE) $(INCCODE:.c=.h)
	@$(CC) -c $(CFLAGS) $(INCCODE) -o $@

$(SRCOBJS) : $(SRCCODE)
	@$(CC) -c $(CFLAGS) -I $(INCDIR) $^ -o $@

#https://qiita.com/algas/items/499d0d69d51a1cc7639f
#makefile 引数渡し on Chrome