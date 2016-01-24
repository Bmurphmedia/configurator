# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

settings = {"http_host"=>"https://mediaresolver-a.akamaihd.net", "uri"=>"{uri}", "format"=>"json", "device"=>"AppleTV", "catalogID"=>"4b7e6e11-99a2-4af0-834b-499e0df22226", "appID"=>"ed5f8114-cef6-40de-b205-8502ced048f0", "domain"=>"ViacomSecure ", "ep"=>"27a6bcf5", "ssid"=>"nick_appletv", "Player Profile"=>"82125%3Avmn_unicorn", "Network ID"=>"82125", "Site Section Network ID"=>"82125", "Asset Network ID"=>"82125", "Franchise"=>"{franchise}", "Owner Org"=>"{owner_org}", "Playlist Type"=>"{playlist_type}", "Artist name"=>"{artist_name}", "Application Name"=>"NickAppleTV", "URI"=>"{uri}", "Screen Name"=>"{screen_name}", "Suite"=>"vianickappletvvid", "Playlist Guid"=>"{playlist_guid}", "User ID"=>"{vid}", "Playlist Title"=>"{playlist_title}", "Environment"=>"AppleTV"}


Field.create(name: 'http_host', platform: 'Media Resolver', query_string_key: '', default_value: 'https://mediaresolver-a.akamaihd.net')
Field.create(name: 'uri', platform: 'Media Resolver', query_string_key: '', default_value: '{uri}')
Field.create(name: 'format', platform: 'Media Resolver', query_string_key: 'formatter', default_value: 'json')
Field.create(name: 'device', platform: 'Media Resolver', query_string_key: 'device', default_value: '')
Field.create(name: 'catalogID', platform: 'Media Resolver', query_string_key: 'catalogID', default_value: '')
Field.create(name: 'appID', platform: 'Media Resolver', query_string_key: 'appID', default_value: '')
Field.create(name: 'domain', platform: 'Media Resolver', query_string_key: 'domain', default_value: 'ViacomSecure ')
Field.create(name: 'ep', platform: 'Media Resolver', query_string_key: 'ep', default_value: '')
Field.create(name: 'ssid', platform: 'Media Resolver', query_string_key: 'ssid', default_value: '')
Field.create(name: 'Player Profile', platform: 'Freewheel', query_string_key: 'UMADPARAMprof', default_value: '')
Field.create(name: 'Network ID', platform: 'Freewheel', query_string_key: 'UMADPARAMnw', default_value: '')
Field.create(name: 'Site Section Network ID', platform: 'Freewheel', query_string_key: 'UMADPARAMssnw', default_value: '')
Field.create(name: 'Asset Network ID', platform: 'Freewheel', query_string_key: 'UMADPARAMasnw', default_value: '')
Field.create(name: 'Franchise', platform: 'Omniture', query_string_key: 'UMBEPARAMser', default_value: '{franchise}')
Field.create(name: 'Owner Org', platform: 'Omniture', query_string_key: 'UMBEPARAMowner', default_value: '{owner_org}')
Field.create(name: 'Playlist Type', platform: 'Omniture', query_string_key: 'UMBEPARAMv28', default_value: '{playlist_type}')
Field.create(name: 'Artist name', platform: 'Omniture', query_string_key: 'UMBEPARAMv29', default_value: '{artist_name}')
Field.create(name: 'Application Name', platform: 'Omniture', query_string_key: 'UMBEPARAMpName', default_value: '')
Field.create(name: 'URI', platform: 'Omniture', query_string_key: 'UMBEPARAMc66', default_value: '{uri}')
Field.create(name: 'Screen Name', platform: 'Omniture', query_string_key: 'UMBEPARAMpgName', default_value: '{screen_name}')
# Field.create(name: '', platform: 'Omniture', query_string_key: 'UMBEPARAMplLen', default_value: '{{# OF SEGMENTS IN PLAYLIST}}')
Field.create(name: 'Suite', platform: 'Omniture', query_string_key: 'UMBEPARAMsuite', default_value: '{brand report suite ID}')
Field.create(name: 'Playlist Guid', platform: 'Omniture', query_string_key: 'UMBEPARAMv66', default_value: '{playlist_guid}')
Field.create(name: 'User ID', platform: 'Omniture', query_string_key: 'UMBEPARAMvid', default_value: '{vid}')
Field.create(name: 'Playlist Title', platform: 'Omniture', query_string_key: 'UMBEPARAMplTitle', default_value: '{playlist_title}')
Field.create(name: 'Environment', platform: 'Omniture', query_string_key: 'UMBEPARAMenv', default_value: '{env}')

Config.create(name: 'Nick Video', settings: settings)

