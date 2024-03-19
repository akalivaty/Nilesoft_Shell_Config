settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'
import 'imports/terminal.nss'
import 'imports/file-manage.nss'
import 'imports/develop.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'

menu(mode="multiple" title="Pin/Unpin" image=icon.pin)
{
}

menu(mode="multiple" title="WinRAR" image=\uE1A4)
{
}

item(mode=mode.multiple title='App Volume' image=\uE0F3 cmd='ms-settings:apps-volume')


menu(mode="multiple" title=title.more_options pos=-1 image=icon.more_options)
{
}