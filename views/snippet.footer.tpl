<div class="footer-container">
	<div class="structure footer z-container padded">
		
		{{navigation}}
		
		
		{{if {contact_page.first().address} }}
		<div class="contact-footer">
			
			<span class="address">{{contact_page.first().address}}, {{contact_page.first().city}}, {{contact_page.first().state}} {{contact_page.first().zip}}</span> |
			<a class="email" href="mailto:{{contact_page.first().email.obfuscate()}}">{{contact_page.first().email.obfuscate()}}</a> |
			<span class="phone">{{contact_page.first().phone.obfuscate()}}</span>
		</div>
		{{end-if}}
		
	</div>
</div>

<p class="copyright">{{clippings.footer_text}}</p>