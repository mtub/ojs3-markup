{**
 * templates/batchConversion.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * markup plugin -- displays the ArticlesGrid.
 *}
<div>
	{url|assign:markupBatchConversionGridUrl router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.markup.controllers.grid.MarkupBatchConversionGridHandler" op="fetchGrid" escape=false}
	{load_url_in_div id="markupBatchConversionGridContainer" url=$markupBatchConversionGridUrl}
	<div class="pkp_form">
		<fieldset>
			<legend>Selected submissions</legend>
			<label class="description">{translate key="plugins.generic.markup.batch.selected-submissions"}</label>
			<input type="hidden" id="batchFilesToConvert" name="batchFilesToConvert" value="{$batchFilesToConvert}" />
			<input type="hidden" id="conversionTriggerUrl" name="conversionTriggerUrl" value="{$conversionTriggerUrl}" />
			<ul id="submissionListConfirmation"></ul>
			<button id="startConversionBtn">{translate key="plugins.generic.markup.batch.trigger-label"}</button>
		</fieldset>
	</div>
</div>
<script type="text/javascript">
	$(function() {ldelim}
		$.pkp.plugins.markup.js.MarkupSubmissionsBatchConversion();
	{rdelim});
</script>

