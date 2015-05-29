{*
/*********************************************************************************
 * SugarCRM is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004 - 2008 SugarCRM Inc.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/
*}
<p style="height: {{$displayParams.size|default:400}}px; overflow: scroll; margin-bottom: 1.5em; width:{{$displayParams.width|default:80}}%" class="select"
{{if isset($displayParams.javascript)}}{{$displayParams.javascript}}{{/if}}>
<input type="hidden" id="{{sugarvar key='name'}}_multiselect" name="{{sugarvar key='name'}}_multiselect" value="true">
{multienum_to_array string={{sugarvar key='value' string=true}} default={{sugarvar key='default' string=true}} assign="values"}
{if isset({{sugarvar key='value' string=true}}) && {{sugarvar key='value' string=true}} != ''}
	{html_checkboxes id="{{$vardef.name}}" name="{{$vardef.name}}" title="{{$vardef.help}}" options={{sugarvar key='options' string=true}} separator='<br/>' selected=$values }
{else}
	{html_checkboxes id="{{$vardef.name}}" name="{{$vardef.name}}" title="{{$vardef.help}}" options={{sugarvar key='options' string=true}} separator='<br/>' selected={{sugarvar key='default' string=true}} }
{/if}
</p>

