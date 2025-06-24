FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-lang-cyrillic \
    texlive-pictures \
    texlive-science \
    cm-super \
    dvipng \
    && apt-get clean

WORKDIR /app
COPY CV/ ./CV
WORKDIR /app/CV
RUN pdflatex -interaction=nonstopmode main.tex

CMD ["bash"]

