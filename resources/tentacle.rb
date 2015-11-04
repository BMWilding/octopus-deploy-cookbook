#
# Author:: Brent Montague (<bmontague@cvent.com>)
# Cookbook Name:: octopus-deploy
# Resource:: tentacle
#
# Copyright:: Copyright (c) 2015 Cvent, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :install, :configure, :remove
default_action :install

attribute :instance, kind_of: String, default: 'Tentacle'
attribute :version, kind_of: String, required: true
attribute :checksum, kind_of: String
attribute :home_path, kind_of: String, default: 'C:\Octopus'
attribute :config_path, kind_of: String, default: 'C:\Octopus\Tentacle.config'
attribute :app_path, kind_of: String, default: 'C:\Octopus\Applications'
attribute :trusted_cert, kind_of: String
attribute :port, kind_of: Fixnum, default: 10_933
attribute :polling, kind_of: [TrueClass, FalseClass], default: false
attribute :cert_file, kind_of: String, default: 'C:\tentacle_cert.txt'
