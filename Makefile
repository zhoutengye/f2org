org:
	python f2org.py example.f90 example.org

md:
	python f2org.py example.f90 example.org
	pandoc -s example.org -o example.md
	rm example.org

rst:
	python f2org.py example.f90 example.org
	pandoc -s example.org -o example.rst
	rm example.org

latex:
	python f2org.py example.f90 example.org
	pandoc -s example.org -o example.tex
	rm example.org

pdf:
	python f2org.py example.f90 example.org
	pandoc -s example.org -o example.pdf
	rm example.org

html:
	python f2org.py example.f90 example.org
	pandoc -s example.org -o example.html
	rm example.org
