{*
 * WiND - Wireless Nodes Database
 *
 * Copyright (C) 2005-2013 	by WiND Contributors (see AUTHORS.txt)
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *}
{if $node_method == 'add'}
{include assign=help file=generic/help.tpl help=mynodes_add}
{assign var=t value="`$lang.node_add`"}
{else}
{include assign=help file=generic/help.tpl help=mynodes}
{assign var=t value="`$lang.node` $node_name (#$node_id)"|escape}
{include assign="view" file="generic/link.tpl" link=$link_node_view content="`$lang.node_view`"}
{if $link_node_delete}
	{include assign="t1" file="generic/link.tpl" link=$link_node_delete content="`$lang.node_delete`" confirm=TRUE}
{/if}
{/if}
{include file=generic/page-title.tpl title="$t" right="$help"}
<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table-page">
<tr>
<td class="table-page-pad">
{include assign="t2" file="generic/link.tpl" content="`$lang.find_coordinates`" 
	onclick="javascript: picker = new LocationPicker($('input[name=nodes__latitude]'), $('input[name=nodes__longitude]')); return false; "}
{include file=generic/title1.tpl title="`$lang.node_info` $t2" right="$view $t1" content=$form_node}
</td>
</tr>
{if $node != 'add'}
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_req_cclass content="`$lang.ip_range_request`"}
{include file=generic/title2.tpl title="`$lang.ip_ranges` $t1" content=$table_ip_ranges}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_req_v6_cclass content="`$lang.ip_range_v6_request`"}
{include file=generic/title2.tpl title="`$lang.ip_ranges_v6` $t1" content=$table_ip_ranges_v6}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_req_dns_for content="`$lang.dnszone_request_forward`"}
{include assign="t2" file="generic/link.tpl" link=$link_req_dns_rev content="`$lang.dnszone_request_reverse`"}
{include file=generic/title2.tpl title="`$lang.dns_zones` $t1 $t2" content=$table_dns}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_nameserver_add content="`$lang.nameserver_add`"}
{include file=generic/title2.tpl title="`$lang.dns_nameservers` $t1" content=$table_nameservers}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_link_add content="`$lang.link_add`"}
{include file=generic/title2.tpl title="`$lang.links` $t1" content=$table_links}
</td>
</tr>
{foreach key=key item=item from=$table_links_ap}
<tr>
<td class="table-page-pad">
{include file=generic/title2.tpl title="`$lang.ap` $key"|escape content=$item}
</td>
</tr>
{/foreach}
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_subnet_add content="`$lang.subnet_add`"}
{include file=generic/title2.tpl title="`$lang.subnets` $t1" content=$table_subnets}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_ipaddr_add content="`$lang.ip_address_add`"}
{include file=generic/title2.tpl title="`$lang.ip_addresses` $t1" content=$table_ipaddr}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include assign="t1" file="generic/link.tpl" link=$link_services_add content="`$lang.services_add`"}
{include file=generic/title2.tpl title="`$lang.services` $t1" content=$table_services}
</td>
</tr>
<tr>
<td class="table-page-pad">
{include file=generic/title2.tpl title="`$lang.myview`" content=$table_photosview}
</td>
</tr>
{/if}
</table>