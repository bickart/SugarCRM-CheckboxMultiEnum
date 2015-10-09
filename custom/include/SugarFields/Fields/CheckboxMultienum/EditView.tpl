<p style="height: {{$displayParams.size|default:400}}px; overflow: {{$displayParams.overflow|default:scroll}}; margin-bottom: 1.5em; width:{{$displayParams.width|default:80}}%" class="select"
  {{if isset($displayParams.javascript)}}{{$displayParams.javascript}}{{/if}}>
  <input type="hidden" id="{{sugarvar key='name'}}_multiselect" name="{{sugarvar key='name'}}_multiselect" value="true">
    {multienum_to_array string={{sugarvar key='value' string=true}} default={{sugarvar key='default' string=true}} assign="values"}

  {if isset({{sugarvar key='value' string=true}}) && {{sugarvar key='value' string=true}} != ''}
    {html_checkboxes id="{{$vardef.name}}" name="{{$vardef.name}}" title="{{$vardef.help}}" options={{sugarvar key='options' string=true}} separator="{{$vardef.separator}}" selected=$values }
  {else}
    {html_checkboxes id="{{$vardef.name}}" name="{{$vardef.name}}" title="{{$vardef.help}}" options={{sugarvar key='options' string=true}} separator="{{$vardef.separator}}" selected={{sugarvar key='default' string=true}} }
{/if}
</p>
