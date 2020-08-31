// JavaScript Document
var originalClassName;
var originalMenuClassName;
var lastSelectedMenu = null;

function highlightCategoryBar(sender,verb)
{
	var subMenuItems = sender.nextSibling.children[0].children[0];
	if(verb == "over")
	{
		originalClassName = sender.className;
		sender.className = "navi_Category_Selected";
	}
	else
	{
		if(subMenuItems.style.display == "none")
		{
			sender.className = "navi_Category_Unselected";
		}
		else
		{
			sender.className = "navi_Category_Selected";
		}
	}
}
function switchCategoryBar(sender)
{
	//nextSibling
	var downArrowImg = sender.children[2].children[0];
	var subMenuItems = sender.nextSibling.children[0].children[0];
	
	if(subMenuItems.style.display == "")
	{
		sender.className = "navi_Category_Unselected";
		downArrowImg.style.display = "";
		subMenuItems.style.display = "none";
	}
	else
	{
		sender.className = "navi_Category_Selected";
		downArrowImg.style.display = "none";
		subMenuItems.style.display = "";
	}
}

function highlightMenuBar(sender,verb)
{
	if(verb == "over")
	{
		originalMenuClassName = sender.className;
		sender.className = "navi_Item_Selected";
	}
	else
	{
		if(lastSelectedMenu == sender)
		{
			sender.className = "navi_Item_Selected";
		}
		else
		{
			sender.className = "navi_Item_Unselected";
		}
	}
}
function switchMenuBar(sender)
{
	if(lastSelectedMenu != null)
	{
		lastSelectedMenu.className = "navi_Item_Unselected";
	}
	sender.className = "navi_Item_Selected";
	lastSelectedMenu = sender;
}