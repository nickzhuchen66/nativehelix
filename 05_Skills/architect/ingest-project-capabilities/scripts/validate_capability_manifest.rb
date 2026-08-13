#!/usr/bin/env ruby

require "yaml"

path = ARGV.fetch(0) { abort "usage: validate_capability_manifest.rb <manifest.yaml>" }
data = YAML.safe_load(File.read(path), permitted_classes: [], aliases: false)
abort "manifest must be a mapping" unless data.is_a?(Hash)
abort "schema_version is required" if data["schema_version"].to_s.empty?
caps = data["capabilities"]
abort "capabilities must be a non-empty list" unless caps.is_a?(Array) && !caps.empty?

required = %w[id name capability_class primary_owner consulted_roles implementation_maturity transfer_maturity evidence_scope]
allowed_impl = %w[concept documented implemented tested operated]
allowed_transfer = %w[single_project compared cross_project_validated reference_ready]
allowed_classes = %w[product technical cross_functional]
ids = {}

caps.each_with_index do |cap, index|
  abort "capability #{index} must be a mapping" unless cap.is_a?(Hash)
  missing = required.select { |key| cap[key].nil? || cap[key].to_s.empty? }
  abort "capability #{index} missing: #{missing.join(', ')}" unless missing.empty?
  abort "duplicate id: #{cap['id']}" if ids[cap["id"]]
  ids[cap["id"]] = true
  abort "invalid capability_class for #{cap['id']}" unless allowed_classes.include?(cap["capability_class"])
  abort "consulted_roles must be a non-empty list for #{cap['id']}" unless cap["consulted_roles"].is_a?(Array) && !cap["consulted_roles"].empty?
  abort "invalid implementation_maturity for #{cap['id']}" unless allowed_impl.include?(cap["implementation_maturity"])
  abort "invalid transfer_maturity for #{cap['id']}" unless allowed_transfer.include?(cap["transfer_maturity"])
end

puts "valid: #{caps.length} capabilities"
