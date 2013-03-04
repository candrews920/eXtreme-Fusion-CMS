{*
/*********************************************************
| eXtreme-Fusion 5
| Content Management System
|
| Copyright (c) 2005-2013 eXtreme-Fusion Crew
| http://extreme-fusion.org/
|
| This program is released as free software under the
| Affero GPL license. You can redistribute it and/or
| modify it under the terms of this license which you
| can read by viewing the included agpl.txt or online
| at www.gnu.org/licenses/agpl.html. Removal of this
| copyright header is strictly prohibited without
| written permission from the original author(s).
|
**********************************************************
                ORIGINALLY BASED ON
---------------------------------------------------------+
| PHP-Fusion Content Management System
| Copyright (C) 2002 - 2011 Nick Jones
| http://www.php-fusion.co.uk/
+--------------------------------------------------------+
| Author: Nick Jones (Digitanium)
+--------------------------------------------------------+
| This program is released as free software under the
| Affero GPL license. You can redistribute it and/or
| modify it under the terms of this license which you
| can read by viewing the included agpl.txt or online
| at www.gnu.org/licenses/agpl.html. Removal of this
| copyright header is strictly prohibited without
| written permission from the original author(s).
+--------------------------------------------------------*/
*}

{if $tag}
	{php} opentable(__('Materiały zawierające słowo kluczowe: :tagTitle', array(':tagTitle' => $this->data['tag_name']))) {/php}
		<p class="tag_top dark text_dark">
			<a href="{$url_tag}">Tagi</a> <img src="{$THEME_IMAGES}bullet.png" alt=""> <strong>{$tag_name}</strong> ({$tag_frequency})
		</p>
		<ul class="tagged_elements clearfix">
		{section=tag}
			<li><a href="{$tag.tag_url_item}" class="light">{$tag.tag_title_item}</a></li>
		{/section}
		</ul>
		<a href="{$url_tag}" class="button">Wróć do listy tagów</a>
	{php} closetable() {/php}
{elseif $tags}
	{php} opentable(__('Lista słów kluczowych')) {/php}
		<div class="tag_cloud">
			<ul>
				{section=tags}
					<li><a href="{$tags.tag_url}" rel="{if $tags.tag_frequency<30}{$tags.tag_frequency}{else}30{/if}">{$tags.tag_name}</a></li>
				{/section}
			</ul>
		</div>
	{php} closetable() {/php}
{else}
	{php} opentable(__('Brak tagów w bazie')) {/php}	
		<p class="status">{i18n('Brak takiego tagu')}</p>
	{php} closetable() {/php}
{/if}