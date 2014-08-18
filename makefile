STDLIB=adv3Lite/adv3Lite
NAME=game
LANG=english
OBJD=obj
BIND=bin

FLAGS_OBJ=-Fy $(OBJD) -Fo $(OBJD)
FLAGS_LANG=-D LANGUAGE=$(LANG)
FLAGS_O=-o $(NAME).t3
FLAGS_LIB=-lib system -lib $(STDLIB)
FLAGS_SRC=-source $(NAME)
FLAGS=$(FLAGS_OBJ) $(FLAGS_LANG) $(FLAGS_O) $(FLAGS_LIB) $(FLAGS_SRC)

all:
	mkdir -p $(OBJD) $(BIND)
	t3make $(FLAGS)
	mv GameInfo.txt $(NAME).t3 $(BIND)
clean:
	rm -fr $(OBJD) $(BIND)
play:
	frob $(BIND)/$(NAME).t3
