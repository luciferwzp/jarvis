#INCLUDE=-I. -I./speech
LIB=-ljsoncpp -lcurl -lcrypto -lpthread
jarvis:jarvis.cc
	g++ -o $@ $^ $(LIB) -std=c++11 $(INCLUDE)
.PHONY:clean
clean:
	rm -f jarvis
