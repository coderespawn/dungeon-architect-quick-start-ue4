SET GENDIR=_user_guide/generator
SET TEXTDIR=_user_guide/text


pushd ..\..
pandoc -s -S --toc -c %GENDIR%/pandoc.css -A %GENDIR%/footer.html ^
	%TEXTDIR%/01_introduction.txt ^
	%TEXTDIR%/02_installation.txt ^
	%TEXTDIR%/03_dungeon_actor.txt ^
	%TEXTDIR%/03A_config_parameters.txt ^
-o "User Guide.html"

popd