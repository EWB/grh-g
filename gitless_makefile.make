core = 7.x

api = 2
projects[] = "drupal"
; Modules
projects[addanother][subdir] = "contrib"

projects[advanced_help][subdir] = "contrib"

projects[addressfield][subdir] = "contrib"

projects[backup_migrate][subdir] = "contrib"

projects[block_class][subdir] = "contrib"

projects[boxes][subdir] = "contrib"

projects[ckeditor_link][subdir] = "contrib"

projects[ctools][subdir] = "contrib"

projects[context][subdir] = "contrib"

projects[context_mobile_detect][subdir] = "contrib"

projects[date][subdir] = "contrib"

projects[delta][subdir] = "contrib"

projects[devel][subdir] = "contrib"

projects[diff][subdir] = "contrib"

projects[email][subdir] = "contrib"

projects[entity][subdir] = "contrib"

projects[entitycache][subdir] = "contrib"

projects[entityreference][subdir] = "contrib"

projects[environment_indicator][subdir] = "contrib"

projects[facetapi][subdir] = "contrib"

projects[facetapi_collapsible][subdir] = "contrib"

projects[features][version] = "2.0-beta1"
projects[features][subdir] = "contrib"

projects[feeds][subdir] = "contrib"

projects[feeds_tamper][subdir] = "contrib"

projects[field_group][subdir] = "contrib"

projects[flag][subdir] = "contrib"

projects[geocoder][subdir] = "contrib"

projects[geofield][subdir] = "contrib"

projects[geophp][subdir] = "contrib"

projects[globalredirect][subdir] = "contrib"

projects[google_analytics][subdir] = "contrib"

projects[hide_formats][subdir] = "contrib"

projects[data_export_import][subdir] = "contrib"

projects[job_scheduler][subdir] = "contrib"

projects[libraries][subdir] = "contrib"

projects[link][subdir] = "contrib"

projects[metatag][subdir] = "contrib"

projects[name][subdir] = "contrib"

projects[nice_menus][subdir] = "contrib"

projects[omega_tools][subdir] = "contrib"

projects[options_element][subdir] = "contrib"

projects[pathologic][subdir] = "contrib"

projects[phone][subdir] = "contrib"

projects[print][subdir] = "contrib"

projects[quicktabs][subdir] = "contrib"

projects[services][subdir] = "contrib"

projects[sharethis][subdir] = "contrib"

projects[strongarm][subdir] = "contrib"

projects[taxonomy_csv][subdir] = "contrib"

projects[taxonomy_manager][subdir] = "contrib"

projects[token][subdir] = "contrib"

projects[uuid][version] = "1.0-dev"
projects[uuid][subdir] = "contrib"

projects[views][subdir] = "contrib"

projects[views_bulk_operations][subdir] = "contrib"

projects[views_slideshow][subdir] = "contrib"

projects[wysiwyg][subdir] = "contrib"

projects[xmlsitemap][subdir] = "contrib"


;Search-Related Cluster #1
projects[search_api][subdir] = "contrib"

projects[search_api_page][subdir] = "contrib"

projects[search_api_solr][subdir] = "contrib"


; Themes
projects[] = "omega"

; Please fill the following out. Type may be one of get, git, bzr or svn,
; and url is the url of the download.


; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.3/ckeditor_3.6.3.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[colorbox][destination] = "libraries"
libraries[ckeditor][type] = "library"

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

libraries[geophp][download][type] = "get"
libraries[geophp][download][url] = "https://github.com/phayes/geoPHP.git"
libraries[geophp][directory_name] = "geophp"
libraries[geophp][destination] = "libraries"

libraries[jquery.cycle][type] = "libraries"
libraries[jquery.cycle][download][type] = "file"
libraries[jquery.cycle][download][url] = "https://raw.github.com/malsup/cycle/master/jquery.cycle.all.js"

libraries[json2][type] = "libraries"
libraries[json2][download][type] = "file"
libraries[json2][download][url] = "https://raw.github.com/douglascrockford/JSON-js/master/json2.js"

libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r60.2011-05-04.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[geophp][destination] = "libraries"
libraries[SolrPhpClient][type] = "library"