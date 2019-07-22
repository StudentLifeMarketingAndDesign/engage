<header role="banner">
	<div class="container px-lg-0">
		<div class="row align-items-stretch">
			<div class="col-7 col-sm-6 col-md-4 col-lg-auto">
				<h1>				
					<a href="$BaseHref" class="brand" rel="home">
							$SiteConfig.Title
					</a>
				</h1>
				<p class="d-none d-sm-block">
					<a href="$BaseHref" class="brand" rel="home">
						$SiteConfig.Tagline
					</a>
				</p>
			</div>
			<div class="navbar navbar-expand-lg col-5 col-sm-6 col-md-8 d-lg-none py-0">
				<button class="navbar-toggler mx-auto my-1 ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>
				<% if $SearchForm %>
					<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
						<i class="fas fa-search"></i>
					</button>
				<% end_if %>
				<% with $SiteConfig %>
                    <ul class="nav justify-content-end d-none d-sm-block d-lg-none">
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <span class="nav-link">$PhoneNumber</span>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:$Email">$Email</a>
                            </li>
                        <% end_if %>
                    </ul>
                <% end_with %>
			</div>
			<div class="col-lg searchform-enabled ">
				<% with $SiteConfig %>
                    <ul class="nav justify-content-end d-sm-none d-lg-flex">
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <span class="nav-link">$PhoneNumber</span>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:$EmailAddress">$EmailAddress</a>
                            </li>
                        <% end_if %>
                    </ul>
                <% end_with %>
				<% if $SearchForm %>
					<div class="search-bar navbar navbar-expand-lg p-0">
						<div id="SearchBar" class="collapse navbar-collapse">
							<div class="mx-auto mr-lg-0 my-2">
								$SearchForm
							</div>
						</div>
					</div>
				<% end_if %>
				<div class="row align-items-end">
					<% include Navigation %>
				</div>
			</div>
		</div>
	</div>
</header>