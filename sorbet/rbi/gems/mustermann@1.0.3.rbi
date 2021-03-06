# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Mustermann
  def self.[](name); end
  def self.extend_object(object); end
  def self.new(*input, type: _, operator: _, **options); end
  def self.normalized_type(type); end
  def self.register(name, type); end
  def self.try_require(path); end
end

module Mustermann::AST
end

class Mustermann::AST::Boundaries < ::Mustermann::AST::Translator
  def set_boundaries(node, start, stop); end

  def self.set_boundaries(ast, string: _, start: _, stop: _); end
end

class Mustermann::AST::Boundaries::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::AST::Expander < ::Mustermann::AST::Translator
  def add(ast); end
  def add_to(list, result); end
  def error_class; end
  def error_for(values); end
  def escape(string, *args); end
  def expand(values); end
  def expandable?(values); end
  def expandable_keys(keys); end
  def for_capture(node, **options); end
  def keys; end
  def mappings; end
  def pattern(string = _, *keys, **filters); end
  def pattern_for(node, **options); end
end

class Mustermann::AST::Expander::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::AST::Node
  def initialize(payload = _, **options); end

  def each_leaf(&block); end
  def is_a?(type); end
  def length; end
  def min_size; end
  def parse; end
  def payload; end
  def payload=(_); end
  def start; end
  def start=(_); end
  def stop; end
  def stop=(_); end
  def type; end

  def self.[](name); end
  def self.constant_name(name); end
  def self.parse(*args, &block); end
  def self.type; end
end

class Mustermann::AST::Node::Capture < ::Mustermann::AST::Node
  def constraint; end
  def constraint=(_); end
  def convert; end
  def convert=(_); end
  def name; end
  def parse; end
  def qualifier; end
  def qualifier=(_); end
end

class Mustermann::AST::Node::Char < ::Mustermann::AST::Node
  def min_size; end
end

class Mustermann::AST::Node::Composition < ::Mustermann::AST::Node
  def initialize(payload = _, **options); end
end

class Mustermann::AST::Node::Expression < ::Mustermann::AST::Node
  def operator; end
  def operator=(_); end
end

class Mustermann::AST::Node::Group < ::Mustermann::AST::Node::Composition
end

class Mustermann::AST::Node::NamedSplat < ::Mustermann::AST::Node::Splat
  def name; end
end

class Mustermann::AST::Node::Optional < ::Mustermann::AST::Node
end

class Mustermann::AST::Node::Or < ::Mustermann::AST::Node
end

class Mustermann::AST::Node::Root < ::Mustermann::AST::Node
  def pattern; end
  def pattern=(_); end

  def self.parse(string, &block); end
end

class Mustermann::AST::Node::Separator < ::Mustermann::AST::Node
  def min_size; end
end

class Mustermann::AST::Node::Splat < ::Mustermann::AST::Node::Capture
  def name; end
end

class Mustermann::AST::Node::Union < ::Mustermann::AST::Node::Composition
end

class Mustermann::AST::Node::Variable < ::Mustermann::AST::Node::Capture
  def explode; end
  def explode=(_); end
  def prefix; end
  def prefix=(_); end
end

class Mustermann::AST::Node::WithLookAhead < ::Mustermann::AST::Node
  def initialize(payload, at_end, **options); end

  def at_end; end
  def at_end=(_); end
  def head; end
  def head=(_); end
end

class Mustermann::AST::ParamScanner < ::Mustermann::AST::Translator
  def self.scan_params(ast); end
end

class Mustermann::AST::ParamScanner::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::AST::Parser
  extend(::Forwardable)

  def initialize(pattern: _, **options); end

  def buffer; end
  def default_node(char); end
  def eos?(*args, &block); end
  def expect(regexp, char: _, **options); end
  def getch(*args, &block); end
  def min_size(start, stop, node); end
  def node(type, *args, &block); end
  def parse(string); end
  def pattern; end
  def pos(*args, &block); end
  def read; end
  def read_args(key_separator, close, separator: _, symbol_keys: _, **options); end
  def read_brackets(open, close, char: _, escape: _, quote: _, **options); end
  def read_escaped(close, escape: _, **options); end
  def read_list(*close, separator: _, escape: _, quotes: _, ignore: _, **options); end
  def read_suffix(element); end
  def scan(regexp); end
  def string; end
  def unexpected(char = _, exception: _); end

  def self.on(*chars, &block); end
  def self.parse(string, **options); end
  def self.suffix(pattern = _, after: _, &block); end
end

class Mustermann::AST::Pattern < ::Mustermann::RegexpBased
  extend(::SingleForwardable)

  def boundaries(*args, &block); end
  def compiler(*args, &block); end
  def expand(behavior = _, values = _); end
  def map_param(key, value); end
  def param_scanner(*args, &block); end
  def parser(*args, &block); end
  def template_generator(*args, &block); end
  def to_ast; end
  def to_templates; end
  def transformer(*args, &block); end
  def validation(*args, &block); end

  private

  def compile(**options); end
  def generate_templates(*args, &block); end
  def param_converters; end
  def parse(*args, &block); end
  def scan_params(*args, &block); end
  def set_boundaries(*args, &block); end
  def transform(*args, &block); end
  def validate(*args, &block); end

  def self.boundaries; end
  def self.compiler; end
  def self.on(*args, &block); end
  def self.param_scanner; end
  def self.parser; end
  def self.suffix(*args, &block); end
  def self.template_generator; end
  def self.transformer; end
  def self.validation; end
end

class Mustermann::AST::TemplateGenerator < ::Mustermann::AST::Translator
  def self.generate_templates(ast); end
end

class Mustermann::AST::TemplateGenerator::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::AST::Transformer < ::Mustermann::AST::Translator
  def self.transform(tree); end
end

class Mustermann::AST::Transformer::ArrayTransform < ::Mustermann::AST::Transformer::NodeTranslator
  def create_lookahead(elements, *args); end
  def expect_lookahead?(element); end
  def list_for(element); end
  def lookahead?(element, in_lookahead = _); end
  def lookahead_buffer; end
  def lookahead_payload?(payload, in_lookahead); end
  def payload; end
  def track(element); end
  def translate; end
end

class Mustermann::AST::Transformer::ExpressionTransform < ::Mustermann::AST::Transformer::NodeTranslator
  def translate; end
end

Mustermann::AST::Transformer::ExpressionTransform::OPERATORS = T.let(T.unsafe(nil), Hash)

class Mustermann::AST::Transformer::ExpressionTransform::Operator < ::Struct
  def allow_reserved; end
  def allow_reserved=(_); end
  def parametric; end
  def parametric=(_); end
  def prefix; end
  def prefix=(_); end
  def separator; end
  def separator=(_); end

  def self.[](*_); end
  def self.inspect; end
  def self.members; end
  def self.new(*_); end
end

class Mustermann::AST::Transformer::GroupTransformer < ::Mustermann::AST::Transformer::NodeTranslator
  def group(elements); end
  def split_payload; end
  def translate; end
  def union; end
end

class Mustermann::AST::Transformer::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::AST::Transformer::RootTransformer < ::Mustermann::AST::Transformer::GroupTransformer
  def union; end
end

class Mustermann::AST::Translator
  def decorator_for(node); end
  def error_class; end
  def escape(char, parser: _, escape: _, also_escape: _); end
  def translate(node, *args, &block); end

  def self.create(&block); end
  def self.dispatch_table; end
  def self.inherited(subclass); end
  def self.raises(error); end
  def self.translate(*types, &block); end
end

class Mustermann::AST::Translator::NodeTranslator
  def initialize(node, translator); end

  def node; end
  def t(*args, &block); end
  def translator; end

  def self.register(*types); end
end

class Mustermann::AST::Validation < ::Mustermann::AST::Translator
  def check_name(name, forbidden: _); end
  def names; end

  def self.validate(ast); end
end

class Mustermann::AST::Validation::NodeTranslator < ::Mustermann::AST::Translator::NodeTranslator
  def self.translator; end
end

class Mustermann::Caster
  def initialize(*types, &block); end

  def cast(hash); end
  def caster_for(type, &block); end
  def register(*types, &block); end
end

class Mustermann::Caster::Any
  def initialize(&block); end

  def cast(key, value); end
end

class Mustermann::Caster::Key < ::Mustermann::Caster::Any
  def initialize(type, &block); end

  def cast(key, value); end
end

class Mustermann::Caster::Value < ::Mustermann::Caster::Any
  def initialize(type, &block); end

  def cast(key, value); end
end

class Mustermann::CompileError < ::Mustermann::Error
end

class Mustermann::Composite < ::Mustermann::Pattern
  def initialize(patterns, operator: _, **options); end

  def ==(pattern); end
  def ===(string); end
  def eql?(pattern); end
  def expand(behavior = _, values = _); end
  def hash; end
  def inspect; end
  def match(string); end
  def operator; end
  def params(string); end
  def patterns; end
  def respond_to_special?(method); end
  def simple_inspect; end
  def to_s; end
  def to_templates; end

  private

  def patterns_from(pattern, options = _); end
  def with_matching(string, method); end

  def self.new(*patterns, **options); end
  def self.supported?(option, type: _, **options); end
end

class Mustermann::Concat < ::Mustermann::Composite
  def initialize(*_); end

  def ===(string); end
  def expand(behavior = _, values = _); end
  def match(string); end
  def operator; end
  def params(string); end
  def peek_match(string); end
  def peek_params(string); end
  def peek_size(string); end
  def respond_to_special?(method); end
  def to_templates; end

  private

  def combined_ast; end
  def pump(string, inject_with: _, initial: _, with_size: _); end
end

module Mustermann::Concat::Native
  def +(other); end
  def look_ahead(other); end

  private

  def native_concat(other); end
  def native_concat?(other); end
end

Mustermann::DEFAULT_TYPE = T.let(T.unsafe(nil), Symbol)

class Mustermann::EqualityMap
  def initialize; end

  def fetch(key); end
  def map; end

  private

  def finalizer(hash); end
  def track(key, object); end

  def self.new; end
end

class Mustermann::Error < ::StandardError
end

class Mustermann::ExpandError < ::Mustermann::Error
end

class Mustermann::Expander
  def initialize(*patterns, additional_values: _, **options, &block); end

  def <<(*patterns); end
  def ==(other); end
  def add(*patterns); end
  def additional_values; end
  def cast(*types, &block); end
  def eql?(other); end
  def expand(behavior = _, values = _); end
  def expandable?(values); end
  def hash; end
  def patterns; end

  private

  def append(uri, values); end
  def caster; end
  def map_values(values); end
  def slice(hash, keys); end
  def split_values(values); end
  def with_rest(values); end
end

class Mustermann::Identity < ::Mustermann::Pattern
  include(::Mustermann::Concat::Native)

  def ===(string); end
  def expand(behavior = _, values = _); end
  def peek_size(string); end
  def to_ast; end
  def to_templates; end
end

class Mustermann::ParseError < ::Mustermann::Error
end

class Mustermann::Pattern
  include(::Mustermann)

  def initialize(string, uri_decode: _, **options); end

  def &(other); end
  def +(other); end
  def ==(other); end
  def ===(string); end
  def =~(string); end
  def ^(other); end
  def always_array?(key); end
  def eql?(other); end
  def expand(behavior = _, values = _); end
  def hash; end
  def inspect; end
  def match(string); end
  def named_captures; end
  def names; end
  def options; end
  def params(string = _, captures: _, offset: _); end
  def peek(string); end
  def peek_match(string); end
  def peek_params(string); end
  def peek_size(string); end
  def respond_to?(method, *args); end
  def simple_inspect; end
  def to_proc; end
  def to_s; end
  def to_templates; end
  def uri_decode; end
  def |(other); end

  private

  def map_param(key, value); end
  def respond_to_special?(method); end
  def unescape(string, decode = _); end

  def self.new(string, ignore_unknown_options: _, **options); end
  def self.register(*names); end
  def self.supported?(option, **options); end
  def self.supported_options(*list); end
end

class Mustermann::RegexpBased < ::Mustermann::Pattern
  extend(::Forwardable)

  def initialize(string, **options); end

  def ===(*args, &block); end
  def =~(*args, &block); end
  def match(*args, &block); end
  def named_captures(*args, &block); end
  def names(*args, &block); end
  def peek_match(string); end
  def peek_size(string); end
  def regexp; end
  def to_regexp; end

  private

  def compile(**options); end
end

class Mustermann::Regular < ::Mustermann::RegexpBased
  include(::Mustermann::Concat::Native)

  def initialize(string, check_anchors: _, **options); end


  private

  def check_anchors(scanner); end
  def compile(**options); end
  def extended_regexp?(string); end
end

class Mustermann::SimpleMatch
  def initialize(string = _, names: _, captures: _); end

  def +(other); end
  def [](*args); end
  def captures; end
  def inspect; end
  def names; end
  def to_s; end
end

class Mustermann::Sinatra < ::Mustermann::AST::Pattern
  include(::Mustermann::Concat::Native)

  def safe_string; end
  def |(other); end

  private

  def native_concat(other); end

  def self.escape(string); end
  def self.try_convert(input, **options); end
end
