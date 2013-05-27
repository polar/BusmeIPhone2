
JAVA_UTIL=build/openjdk/jdk/src/share/classes/java/util
OSMDROID_SRC=build/osmdroid/osmdroid-android/src/main/java/org/osmdroid

MAIN_DEST=build/src
JMDEST=$(MAIN_DEST)/main/java
JGDEST=$(MAIN_DEST)/gen/java

OSMDROID_DEST=$(JMDEST)/org/osmdroid
BUSME_DEST=$(JMDEST)/com/adiron/busme


SOURCEPATH=$(JMDEST):$(JGDEST)

all: download pull copy revamp list
	/Users/polar/Downloads/j2objc-0.7.2/j2objc -d Classes -sourcepath $(SOURCEPATH) `cat srclist`

list:
	find build/src -name '*.java' > srclist

build/KGModal:
	cd build; git clone git://github.com/kgn/KGModal.git
	
build/BusmeMobile:
	cd build; git clone	git://github.com/polar/BusmeMobile.git

pull: build/BusmeMobile
	cd build/BusmeMobile; git checkout refactor_for_iphone; git pull
	
build/osmdroid:
	cd build; svn checkout http://osmdroid.googlecode.com/svn/trunk osmdroid
	
$(JAVA_UTIL):
	mkdir -p $(JAVA_UTIL)
$(JAVA_UTIL)/Observable.java: $(JAVA_UTIL)
	cd $(JAVA_UTIL); curl -o Observable.java http://grepcode.com/file_/repository.grepcode.com/java/root/jdk/openjdk/7-b147/java/util/Observable.java/?v=source&disposition=attachment
$(JAVA_UTIL)/Observer.java: $(JAVA_UTIL)
	cd $(JAVA_UTIL); curl -o Observer.java http://grepcode.com/file_/repository.grepcode.com/java/root/jdk/openjdk/7-b147/java/util/Observer.java/?v=source&disposition=attachment
	
download: $(JAVA_UTIL)/Observable.java\
			$(JAVA_UTIL)/Observer.java\
			build/osmdroid build/BusmeMobile

copy:
	rm -rf $(JMDEST) $(JGDEST)
	mkdir -p $(OSMDROID_DEST)/util/constants
	cp $(OSMDROID_SRC)/util/constants/*.java $(OSMDROID_DEST)/util/constants
	mkdir -p $(OSMDROID_DEST)/api
	mkdir -p $(JMDEST)/java/util
	cp $(JAVA_UTIL)/Observ*.java  $(JMDEST)/java/util
	cp -r build/BusmeMobile/src/com $(JMDEST)
	cp -r build/BusmeMobile/src/org $(JMDEST)
	mkdir -p $(JGDEST)
	cp -r build/BusmeMobile/gen/com  $(JGDEST)
	
revamp:
	rm -rf xxx
	mv  $(BUSME_DEST)/integration xxx
	cp -r xxx/iphone $(BUSME_DEST)/integration
	find $(BUSME_DEST)/integration -name '*.java' -exec ./edit '{}' \;
	rm -f $(BUSME_DEST)/*.java

		
