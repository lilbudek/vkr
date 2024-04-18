# Makefile для сборки ВКР.
# Автор: Шмаков И.А.
# Версия: 01.12.2021

default: help
.PHONY: default

book:
	cd tex && xelatex -shell-escape main-csae && biber main-csae && xelatex -shell-escape main-csae
.PHONY: book

clean:
	cd tex && rm *.aux *.log *.bbl *.bcf *.blg *.toc *.run.xml *.out
	cd tex-presentation && rm *.aux *.log *.bbl *.bcf *.blg *.toc *.run.xml *.out
	cd tex-report && rm *.aux *.log *.bbl *.bcf *.blg *.toc *.run.xml *.out
.PHONY: clean

# Help Target
help:
	@echo "Следующие цели представлены в данном Makefile:"
	@echo "... help (Данная цель является целью по умолчанию)"
	@echo "... book сборка ВКР"
	@echo "... clean удаление временных файлов"
.PHONY: help
