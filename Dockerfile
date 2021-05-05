FROM ubuntu:20.10
RUN apt update
RUN apt install vim -y
RUN apt install emacs -y
RUN apt install z3 -y
RUN apt install git -y
RUN apt install make -y
RUN apt install ssh -y
RUN apt install opam -y
RUN apt install time -y
RUN apt install screen -y
RUN apt install tmux -y
RUN apt install sqlite3 -y
RUN apt install bsdmainutils -y
RUN apt install grip -y
RUN opam init --disable-sandboxing
RUN opam install hmap -y
RUN opam install ocamlbuild -y
RUN touch .profile
RUN echo "eval \`opam config env\`" >> .profile
RUN git config --global advice.detachedHead false
RUN mkdir Tools
# Invalidate the cache
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN cd Tools && git clone "https://github.com/vaphor/array-benchmarks.git" 
RUN cd Tools && cat array-benchmarks/install_all.sh | sed 's;git@github.com:vaphor/;https://github.com/vaphor/;' > array-benchmarks/install.sh 
RUN cd Tools && chmod +x array-benchmarks/install.sh 
RUN cd Tools/array-benchmarks && eval `opam config env` && ./install.sh
