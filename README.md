Command-Finder
==============

Software tool for searching GNU / LINUX commands.

This project participates in the following contests:
Certamen de Proyectos Libres de la UGR - http://osl.ugr.es/2014/09/26/premios-a-proyectos-libres-de-la-ugr/
CUSL - http://www.concursosoftwarelibre.org/1415/?q=proyectos

This project is under GNU GPL v3.

Project's blog: https://commandfinder.wordpress.com/
Twitter's blog: https://twitter.com/CommandFinder

==============
Entorno de trabajo
	Ruby-1.9.1
	Gems: multimap (1.1.3)
	Gems: sqlite3 (1.3.10)

$curl -L https://get.rvm.io | bash -s stable --ruby

$source ~/.rvm/scripts/rvm
$rvm requirements
$rvm install 1.9.1
$gems install multimap
$rvm use 1.9.1
$gems install sqlite3
