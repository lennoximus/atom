#
# Cookbook:: chef-atom
# Recipe:: windows
#
# Copyright:: (c) 2016 Doug Ireton
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

package 'Atom' do # ~FC009
  source node['atom']['source_url']
  remote_file_attributes(
    path: File.join(Chef::Config[:file_cache_path], 'AtomSetup.exe')
  )
  installer_type :custom
  options '/silent'
end
