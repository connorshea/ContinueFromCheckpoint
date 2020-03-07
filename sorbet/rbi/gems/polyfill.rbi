# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/polyfill/all/polyfill.rbi
#
# polyfill-1.8.0

module Polyfill
  def get(module_name, methods, options = nil); end
  def self.get(module_name, methods, options = nil); end
end
module Polyfill::InternalUtils
  def create_module; end
  def current_ruby_version; end
  def ignore_warnings; end
  def keep_only_these_methods!(mod, whitelist); end
  def methods_to_keep(modules, methods, lead_symbol, module_name); end
  def modules_to_use(module_name, versions); end
  def polyfill_versions_to_use(desired_version = nil); end
  def self.create_module; end
  def self.current_ruby_version; end
  def self.ignore_warnings; end
  def self.keep_only_these_methods!(mod, whitelist); end
  def self.methods_to_keep(modules, methods, lead_symbol, module_name); end
  def self.modules_to_use(module_name, versions); end
  def self.polyfill_versions_to_use(desired_version = nil); end
  def self.to_f(obj); end
  def self.to_hash(obj); end
  def self.to_int(obj); end
  def self.to_str(obj); end
  def to_f(obj); end
  def to_hash(obj); end
  def to_int(obj); end
  def to_str(obj); end
end
module Polyfill::V2_2
end
module Polyfill::V2_2::Enumerable
  def max(n = nil); end
  def max_by(n = nil); end
  def min(n = nil); end
  def min_by(n = nil); end
  def slice_after(pattern = nil); end
  def slice_when; end
end
module Polyfill::V2_2::Kernel
  def itself; end
end
module Polyfill::V2_2::Math
end
module Polyfill::V2_2::Math::ClassMethods
  def log(*args); end
end
module Polyfill::V2_2::Prime
end
module Polyfill::V2_2::Prime::ClassMethods
  def prime?(*args); end
end
module Polyfill::V2_2::Vector
  def +@; end
end
module Polyfill::V2_3
end
module Polyfill::V2_3::Array
  def bsearch_index; end
  def dig(head, *rest); end
end
module Polyfill::V2_3::Hash
  def <(other); end
  def <=(other); end
  def >(other); end
  def >=(other); end
  def dig(head, *rest); end
  def fetch_values(*keys); end
  def to_proc; end
end
module Polyfill::V2_3::Enumerable
  def chunk_while; end
  def grep_v(pattern); end
  def slice_before(*args); end
end
module Polyfill::V2_3::Enumerator
end
module Polyfill::V2_3::Enumerator::Lazy
  def grep_v(pattern); end
end
module Polyfill::V2_3::Kernel
  def loop; end
end
module Polyfill::V2_3::Numeric
  def negative?; end
  def positive?; end
end
module Polyfill::V2_3::String
  def +@; end
  def -@; end
end
module Polyfill::V2_3::String::ClassMethods
  def new(*args); end
end
module Polyfill::V2_3::Struct
  def dig(head, *rest); end
end
module Polyfill::V2_3::Prime
end
module Polyfill::V2_3::Prime::ClassMethods
  def prime?(*args); end
end
module Polyfill::V2_4
end
module Polyfill::V2_4::Numeric
  def clone(freeze: nil); end
  def dup; end
  def finite?; end
  def infinite?; end
end
module Polyfill::V2_4::Enumerable
  def chunk(*arg0); end
  def sum(init = nil); end
  def uniq; end
end
module Polyfill::Module::M70317552363720
end
module Polyfill::V2_4::Array
  def concat(*others); end
  def sum(init = nil); end
end
module Polyfill::Module::M70317542710280
end
module Polyfill::V2_4::Comparable
  def clamp(min, max); end
end
module Polyfill::V2_4::Dir
end
module Polyfill::V2_4::Dir::ClassMethods
  def empty?(path_name); end
end
module Polyfill::V2_4::Enumerator
end
module Polyfill::V2_4::Enumerator::Lazy
  def chunk_while; end
  def uniq; end
end
module Polyfill::Module::M70317573986860
end
module Polyfill::V2_4::File
end
module Polyfill::V2_4::File::ClassMethods
  def empty?(file_name); end
end
module Polyfill::V2_4::Float
  def ceil(ndigits = nil); end
  def floor(ndigits = nil); end
  def truncate(ndigits = nil); end
end
module Polyfill::V2_4::Hash
  def compact!; end
  def compact; end
  def transform_values!; end
  def transform_values; end
end
module Polyfill::V2_4::Integer
  def ceil(ndigits = nil); end
  def digits(base = nil); end
  def floor(ndigits = nil); end
  def round(ndigits = nil, half: nil); end
  def truncate(ndigits = nil); end
end
module Polyfill::V2_4::IO
  def each_line(*args); end
  def gets(*args); end
  def lines(*args); end
  def readline(*args); end
  def readlines(*args); end
end
module Polyfill::V2_4::IO::ClassMethods
  def foreach(name, *args); end
  def readlines(file_name, *args); end
end
module Polyfill::V2_4::MatchData
  def named_captures; end
  def values_at(*indexes); end
end
module Polyfill::V2_4::Object
  def clone(freeze: nil); end
end
module Polyfill::V2_4::Regexp
  def match?(string, position = nil); end
end
module Polyfill::V2_4::String
  def casecmp?(other); end
  def concat(*others); end
  def each_line(*args); end
  def lines(*args); end
  def match?(pattern, position = nil); end
  def prepend(*others); end
  def unpack1(*args); end
end
module Polyfill::V2_4::String::ClassMethods
  def new(*args); end
end
module Polyfill::V2_4::StringIO
  def each_line(*args); end
  def gets(*args); end
  def lines(*args); end
  def readline(*args); end
  def readlines(*args); end
end
module Polyfill::V2_4::StringIO::ClassMethods
  def foreach(name, *args); end
  def readlines(file_name, *args); end
end
module Polyfill::V2_4::Symbol
  def casecmp?(other); end
  def match(*args); end
  def match?(pattern, position = nil); end
end
module Polyfill::V2_4::IPAddr
  def <=>(*arg0); end
  def ==(*arg0); end
end
module Polyfill::V2_4::Pathname
  def empty?; end
end
module Polyfill::V2_5
end
module Polyfill::V2_5::Array
  def append(*args); end
  def prepend(*args); end
end
module Polyfill::V2_5::Dir
end
module Polyfill::V2_5::Dir::ClassMethods
  def children(dirname, encoding: nil); end
  def each_child(dirname, encoding: nil); end
end
module Polyfill::V2_5::Enumerable
  def all?(*pattern); end
  def any?(*pattern); end
  def none?(*pattern); end
  def one?(*pattern); end
end
module Polyfill::V2_5::Hash
  def slice(*keys); end
  def transform_keys; end
end
module Polyfill::V2_5::Integer
  def allbits?(mask); end
  def anybits?(mask); end
  def ceil(*arg0); end
  def floor(*arg0); end
  def nobits?(mask); end
  def round(*arg0); end
  def truncate(*arg0); end
end
module Polyfill::Module::M70317543259780
end
module Polyfill::V2_5::Integer::ClassMethods
  def sqrt(n); end
end
module Polyfill::V2_5::Kernel
  def yield_self; end
end
module Polyfill::V2_5::String
  def casecmp(other_str); end
  def casecmp?(other_str); end
  def delete_prefix!(prefix); end
  def delete_prefix(prefix); end
  def delete_suffix!(suffix); end
  def delete_suffix(suffix); end
  def each_grapheme_cluster; end
  def grapheme_clusters; end
  def start_with?(*prefixes); end
end
module Polyfill::V2_5::Struct
end
module Polyfill::V2_5::Struct::ClassMethods
  def new(*args, keyword_init: nil); end
end
module Polyfill::V2_5::Time
end
module Polyfill::V2_5::Time::ClassMethods
  def at(*args); end
end
module Polyfill::V2_5::BigDecimal
  def clone; end
  def dup; end
end
module Polyfill::V2_5::Set
  def ===(other); end
  def to_s; end
end
module Polyfill::V2_6
end
module Polyfill::V2_6::Array
  def difference(*arrays); end
  def to_h; end
  def union(*arrays); end
end
module Polyfill::V2_6::Enumerable
  def to_h; end
end
module Polyfill::V2_6::Hash
  def merge!(*args); end
  def merge(*args); end
  def to_h; end
  def update(*args); end
end
module Polyfill::V2_6::Kernel
  def Complex(*args, exception: nil); end
  def Float(arg, exception: nil); end
  def Integer(arg, exception: nil); end
  def Rational(*args, exception: nil); end
  def then; end
end
module Polyfill::Module::M70317547448480
end
module Polyfill::V2_6::OpenStruct
  def to_h; end
end
module Polyfill::V2_6::String
  def split(*arg0); end
end
module Polyfill::V2_6::Struct
  def to_h; end
end
module Polyfill::Module
end
class Object < BasicObject
  def Polyfill(options = nil); end
end
