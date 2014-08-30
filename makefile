STDLIB=adv3Lite/adv3Lite
NAME=game
LANG=english
OBJD=obj
BIND=bin

FLAGS_OBJ=-Fy $(OBJD) -Fo $(OBJD)
FLAGS_LANG=-D LANGUAGE=$(LANG)
FLAGS_O=-o $(NAME).t3
FLAGS_LIB=-lib system -lib $(STDLIB)
FLAGS_SRC=-source reflect.t -source $(NAME)
FLAGS=$(FLAGS_OBJ) $(FLAGS_LANG) $(FLAGS_O) $(FLAGS_LIB) $(FLAGS_SRC)

WEB_FLAGS_LANG=$(FLAGS_LANG) -D TADS_INCLUDE_NET
WEB_FLAGS_LIB=-lib system -lib webui -lib $(STDLIB)Web
WEB_FLAGS_SRC=-source tadsnet $(FLAGS_SRC)
WEB_FLAGS_O=-o $(NAME)_web.t3
WEB_FLAGS=$(FLAGS_OBJ) $(WEB_FLAGS_LANG) $(WEB_FLAGS_O) $(WEB_FLAGS_LIB) $(WEB_FLAGS_SRC)


all:
	mkdir -p $(OBJD) $(BIND)
	t3make $(FLAGS)
	mv GameInfo.txt $(NAME).t3 $(BIND)
web:
	mkdir -p $(OBJD) $(BIND)
	t3make $(WEB_FLAGS)
	mv GameInfo.txt $(NAME)_web.t3 $(BIND)
clean:
	rm -fr $(OBJD) $(BIND)
play:
	frob $(BIND)/$(NAME).t3
webplay:
	frob -N 44 $(BIND)/$(NAME)_web.t3
