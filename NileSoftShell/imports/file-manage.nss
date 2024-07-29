menu(where=sel.count>0 type='file|dir|drive|namespace|back' mode="multiple" title='Керування файлами' image=\uE253)
{
    menu(separator="after" title=title.copy_path image=icon.copy_path)
    {
        item(where=sel.count > 1 title='Copy (@sel.count) items selected' cmd=command.copy(sel(false, "\n")))
        item(mode="single" title=@sel.path tip=sel.path cmd=command.copy(sel.path))
        item(mode="single" type='file' separator="before" find='.lnk'  title='Відкрити розташування файла')
        separator
        item(mode="single" where=@sel.parent.len>3 title=sel.parent cmd=@command.copy(sel.parent))
        separator
        item(mode="single" type='file|dir|back.dir' title=sel.file.name cmd=command.copy(sel.file.name))
        item(mode="single" type='file' where=sel.file.len != sel.file.title.len title=@sel.file.title cmd=command.copy(sel.file.title))
        item(mode="single" type='file' where=sel.file.ext.len>0 title=sel.file.ext cmd=command.copy(sel.file.ext))
    }
    
    item(mode="single" type="file" title="Змінити розширення" image=\uE0B5 cmd=if(input("Change extension", "Type extension"), 
            io.rename(sel.path, path.join(sel.dir, sel.file.title + "." + input.result))))
    
    item(type='file|dir|back.dir|drive' title='Отримати права' image=[\uE194,#f00] admin
        cmd args='/K takeown /f "@sel.path" @if(sel.type==1,null,"/r /d y") && icacls "@sel.path" /grant *S-1-5-32-544:F @if(sel.type==1,"/c /l","/t /c /l /q")')
    separator
    
    menu(type='file|dir|back.dir' mode="single" title='Атрибути')
    {
        $atrr = io.attributes(sel.path)
        item(title='Прихований' checked=io.attribute.hidden(atrr)
            cmd args='/c ATTRIB @if(io.attribute.hidden(atrr),"-","+")H "@sel.path"' window=hidden)
        
        item(title='Системний' checked=io.attribute.system(atrr)
            cmd args='/c ATTRIB @if(io.attribute.system(atrr),"-","+")S "@sel.path"' window=hidden)
        
        item(title='Лише для читання' checked=io.attribute.readonly(atrr)
            cmd args='/c ATTRIB @if(io.attribute.readonly(atrr),"-","+")R "@sel.path"' window=hidden)
        
        item(title='Архівований' checked=io.attribute.archive(atrr)
            cmd args='/c ATTRIB @if(io.attribute.archive(atrr),"-","+")A "@sel.path"' window=hidden)
        separator
        item(title="Створено" keys=io.dt.created(sel.path, 'y/m/d') cmd=io.dt.created(sel.path,2000,1,1))
        item(title="Модифіковано" keys=io.dt.modified(sel.path, 'y/m/d') cmd=io.dt.modified(sel.path,2000,1,1))
        item(title="Отримано доступ" keys=io.dt.accessed(sel.path, 'y/m/d') cmd=io.dt.accessed(sel.path,2000,1,1))
    }
    
    menu(mode="single" type='file' find='.dll|.ocx' separator="before" title='Реєстрація' image=\uea86)
    {
        item(title='Зареєструвати' admin cmd='regsvr32.exe' args='@sel.path.quote' invoke="multiple")
        item(title='Скасувати реєстрацію' admin cmd='regsvr32.exe' args='/u @sel.path.quote' invoke="multiple")
    }
    
    item(where=!wnd.is_desktop title=title.folder_options image=icon.folder_options cmd=command.folder_options)
}