// modify items

// Remove items by identifiers
modify(
	type="*"
	mode=mode.multiple 
	where=this.id(
			id.restore_previous_versions,
			id.cast_to_device,
			id.send_to,
			id.share,
			id.give_access_to,
			id.include_in_library,
			id.print,
			id.open_powershell_window_here,
			id.show_cortana_button,
			id.cascade_windows,
			id.show_windows_side_by_side,
			id.show_windows_stacked,
			id.exit_explorer,
			id.show_people_on_the_taskbar,
			id.show_the_desktop,
			id.customize_this_folder
		) 
	vis=vis.remove
)

// Remove items by name
$hidden_items=[
	"open in terminal", 
	"open linux shell here", 
	"open git gui here", 
	"open git bash here", 
	"powershell 7",
	"scan with microsoft defender",
	"open with winrar",
	"translate with deepl",
	"toolbars"
]
modify(
	type="*"
	where=str.equals(this.name, hidden_items)
	vis=vis.remove
)


modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

// Move items to custom menu
modify(find="pin*" pos="top" menu="Pin/Unpin")
modify(find="unpin*" pos="bottom" menu="Pin/Unpin")
modify(find="add to*" pos="top" menu="WinRAR")
modify(find="and email" menu="WinRAR")
modify(find="extract" menu="WinRAR")


modify(where=this.id==id.copy_as_path menu="file manage")


// find at https://nilesoft.org/docs/functions/id
modify(
	type='*'
	mode=mode.multiple
	where=this.id(
		id.create_shortcut,
		id.set_as_desktop_background,
		id.rotate_left,
		id.rotate_right,
		id.map_network_drive,
		id.disconnect_network_drive,
		id.format,
		id.eject,
		id.view,
		id.sort_by,
		id.group_by,
		id.show_task_view_button,
		id.show_windows_ink_workspace_button,
		id.show_touch_keyboard_button,
		id.personalize,
		id.display_settings,
		id.search,
		id.news_and_interests
	)
	menu=title.more_options
)
