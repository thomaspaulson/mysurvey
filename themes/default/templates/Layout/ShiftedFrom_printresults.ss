	
			<% if $Results %>				
				<table>
					<thead>
					<tr>
						<th>#</th>
						<th>Family</th>
						<th>Contact Person</th>						
						<th>Block/Unit/Family</th>
						<th>Shifted</th>
						<th>Reason</th>
					</tr>
					</thead>
					<tbody>
						<% loop $Results %>
						<tr>
							<td>$Counter</td>
							<td>$Name<br>{$Address}, $Pincode</td>
							<td>$MemberName, $ContactNo	</td>														
							<td>{$BlockNo}/{$UnitNo}/{$FamilyNo}</td>							
							<td>
									<% if $Status %>Yes, From $FromWhere<% else %> No<% end_if %>
							</td>
							<td>							
									<% if $Status %> $ShiftedFrom.Reason<% end_if %>																	
							</td>							
						</tr>
						<% end_loop %>
					</tbody>
				</table>
			<% else %>
				<p>No records found</p>
			<% end_if %>
			
