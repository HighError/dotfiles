menu(where=@(this.count == 0 && isw11) type='taskbar' image=icon.settings expanded=true)
{
	item(title=title.task_manager image=icon.task_manager cmd='taskmgr.exe')
	item(title=title.taskbar_Settings sep=both image=inherit cmd='ms-settings:taskbar')
	item(title=title.settings image=icon.settings(auto, @image.color1) cmd='ms-settings:')
	item(title=title.desktop image=icon.desktop cmd=command.toggle_desktop)
	item(vis=@key.shift() image=\ue1a9 title=title.exit_explorer cmd=command.restart_explorer)
}