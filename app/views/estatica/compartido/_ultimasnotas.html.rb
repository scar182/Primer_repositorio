<% @notas =Nota.find(:all, :limit => 4, :order => "created_at DESC") %>

<ul>
<% @notas.each do |nota| %>
	<li>
	<b><%= link_to nota.titulo, nota %></b></ br>
	
	<% if !nota.categoria.blank? %>
	<%= nota.categoria.nombre %> <br />
	<% end %>
	
	<%= nota.contenido.truncate(70, :omission => "...") %>
  <%= link_to "(ver mas)", nota %>
	</li>
</ul>
	
<% end %>
</ul>
<ul>