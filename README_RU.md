[Outdated content; requires update based on changes for Wing 7 in README.md]

Введение
------------

Переводимые строки Wing разбиты на несколько различных файлов. Некоторые 
более важны, чем другие.  Вот краткий обзор.

Основные файлы
---------------

Эти содержат строки, которые пользователи увидят в пользовательском интерфейсе:

	
	build-files.po 		(переведено 93%)
	src.po 				(переведено 96%)
	src_browser.po 		(переведено 100%)
	src_cache.po  		(переведено 100%)
	src_codewarnings.po (переведено 100%)
	src_command.po 		(переведено 100%)
	src_debug_client.po (переведено 97%)
	src_debug_tserver.po (переведено 100%)
	src_diff.po 		(переведено 93%)
	src_edit.po 		(переведено 96%)
	src_guimgr.po 		(переведено 99%)
	src_guiutils.po 	(переведено 59%) 
	src_guiutils_pysidescintilla.po (не требует перевода)
	src_pref.po 		(переведено 98%)
	src_process.po 		(переведено 98%)
	src_proj.po 		(переведено 97%)
	src_pysource.po 	(переведено 87%)
	src_refactoring.po 	(переведено 100%)
	src_scripting.po  	(переведено 100%)
	src_search.po  		(переведено 99.4%)
	src_testing.po 		(переведено 93%)
	src_versioncontrol.po (переведено 98%)
	src_wingbase.po 	(переведено 100%)
	src_wingide.po 		(переведено 99%)
	src_wingutils.po 	(переведено 100%)

Некоторые функции Wing реализованы в сценариях, которые работают через скрипты API. Их исходный код находится в каталоге «scripts» в вашей установке Wing.

Пользователи обычно не видят отличий от вышеизложенного, и что эти строки показывают в пользовательском интерфейсе:
	
	scripts_debugger_extensions.po
	scripts_django.po
	scripts_editor_extensions.po
	scripts_emacs_extensions.po
	scripts_experimental.po
	scripts_pylintpanel.po

Следующие содержат строки, которые в основном являются строками документации команд.  В настоящее время они используется только в документации, которая только на английском языке, поэтому большинство из этих строк может
быть пропущены.  Правда, несколько, все же являются строками, которые заканчиваются в пользовательском интерфейсе, потому что они извлечены из строк в коде, а не docstrings.  К сожалению, нет никакого очевидного способа отличить их, не видя, как выглядят командная документация:
	
	src_debug_client_cmdmanager.po  (переведено 99.2%)
	src_diff_commands.po  (переведено 100%)
	src_edit_commands.po
	src_guimgr_commands.po
	src_proj_commands.po
	src_refactoring_commands.po  (переведено 100%)
	src_search_commands.po (переведено 100%)
	src_testing_commands.po
	src_versioncontrol_commands.po (переведено 100%)
	src_wingide_topcommands.po

Эти в настоящее время не используются и могут быть полностью пропущены:
	
	scripts_testapi.po
	src_profile.po

Построение и тестирование файлов МО
-----------------------------------

Редактируемые файлы `.po` могут быть конвертированы в файлы `.mo`, которые вы можете попробовать в *Wing* следующим образом. Обязательно сравните версию *Wing*, для которой были созданы .po.



> ***Примечание:*** Поскольку в настоящее время у Wing отключена русская локаль, на данный момент вам нужно будет заменить на «ru» доступные варианты «fr» или «de» в следующих инструкциях и использовать французский или немецкий язык в настройках, чтобы опробовать файлы `.mo`.

В Linux можно настроить символическую ссылку на область dev из установки Wing:
	
	sudo mv /usr/lib/wingide6/resources/locale/fr/LC_MESSAGES/ /usr/lib/wingide6/resources/locale/fr/LC_MESSAGES.old
	
	sudo ln -s `pwd` /usr/lib/wingide6/resources/locale/fr/LC_MESSAGES

Затем введите 'make' для создания `*.mo`.

На OS X пути различаются. Например:

	cd /Applications/WingIDE.app/Contents/Resources/resources/locale/fr
	mv LC_MESSAGES LC_MESSAGES.old
	ln -s /Users/mydir/path/to/wing6-po-ru\PO\ru\ LC_MESSAGES

Также введите «make», чтобы создать `*.mo`.

Чтобы запустить Wing, минуя проверку безопасности OS X, которая не любят изменять содержимое *.app*, запустите из командной строки:

    /Applications/WingIDE.app/Contents/Resources/wing

## Для WINDOWS ##
Для работы инструкции make под ОС windows требуется установка дополнительных библиотек MinGw.
Как вариант, что бы избежать все эти сложности, можно использовать чистый питон.

	msgfmt.py --homedir <ваш репозиторий>\wingide6-po-ru\PO\ru\ --mask-file  *.po --targetdir c:\REPO\wingide6-po-ru\LC_MESSAGES
   
Будут скомпилированы все файлы из папки `homedir` по маске `*.po`, которые будут сохранены в папке `targetdir`
  
	*<ваш репозиторий>\wingide6-po-ru\LC_MESSAGES*

**Далее:**

- Полученные файлы `*.mo` нужно перенести с заменой в 

	*<WINGPATH>\resources\locale\fr\LC_MESSAGES*

- Или, по аналогии с описанием для другими ОС, можно создать символическую ссылку

	`mklink /D "c:\Program Files (x86)\Wing IDE 6.0\resources\locale\fr\LC_MESSAGES" c:\REPO\wingide6-po-ru\LC_MESSAGES`
		

> символическая ссылка создана для c:\Program Files (x86)\Wing IDE 6.0\resources\locale\fr\LC_MESSAGES <<===>c:\REPO\wingide6-po-ru\LC_MESSAGES



## *Скриншот Wing IDE ru* ##
 
![](wing_ru_po.png)
