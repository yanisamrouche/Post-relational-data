XML := site-master.xml 
XSL := site-master.xsl
XSD := site-master.xsd 

all: dtd xsd web tidy xq

dtd:
	@echo "validation de site-master.xml par la DTD..."
	xmllint --valid --noout site-master.xml
	@echo "validation de site-master.xml par la DTD Fini..."

xsd:
	@echo "validation de site-master.xml par le schema..."
	xmllint --schema site-master.xsd site-master.xml
	@echo "validation de site-master.xml par le schema Fini..."

web:
	@echo "Fabrication du site WEB..."
	java -jar saxon9/saxon9he.jar -xsl:./Fichiers_XSL/site-master.xsl site-master.xml
	@echo "Fabrication du site WEB Fini..."

tidy:
	@echo "Verification des fichiers XHTML..."
	tidy -utf8 -i -m ./www/*.html
	@echo "Verification des fichiers XHTML Fini..."
	
xq:
	@echo "XQuery..."
	java -cp saxon9/saxon9he.jar: net.sf.saxon.Query -q:xq.txt -o:./www/xq.html
	@echo "XQuery Fini..."
