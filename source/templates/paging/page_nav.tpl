{if $nums}
	<div class="center">
		{if $first}<a href="{url("controller =>", $page, $id, $first)}" title="{i18n('Go to first page')}" class="buttone">Do pierwszej</a>{/if}
			{section=nums}
				{if $nums == $current}
					<strong class="button">{$nums}</strong>
				{else}
					<a href="{url("controller =>", $page, $id, $nums)}" title="{i18n('Go to page')}" class="buttone">{$nums}</a>
				{/if}
			{/section}
		{if $last}<a href="{url("controller =>", $page, $id, $last)}" title="{i18n('Go to last page')}" class="buttone">Do ostatniej</a>{/if}
	</div>
{/if}