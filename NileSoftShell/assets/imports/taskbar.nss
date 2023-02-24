﻿menu(type="taskbar" vis=key.shift() pos=0 title=app.name image=\uE249)
{
	item(title="config" image=\uE10A cmd='"@app.cfg"')
	item(title="manager" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" image=\uE0E8 cmd='"@app.dir"')
	item(title="version\t"+@app.ver vis=label col=1)
	item(title="docs" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="donate" image=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0 && isw11) type='taskbar' image=icon.settings expanded=true)
{
	item(title=title.task_manager image=icon.task_manager cmd='taskmgr.exe')
	item(title=title.taskbar_Settings sep=both image=inherit cmd='ms-settings:taskbar')
	item(title=title.settings image=icon.settings(auto, @image.color1) cmd='ms-settings:')
	item(title=title.desktop image=icon.desktop cmd=command.toggle_desktop)
	item(vis=@key.shift() title=title.exit_explorer cmd=command.restart_explorer)
}