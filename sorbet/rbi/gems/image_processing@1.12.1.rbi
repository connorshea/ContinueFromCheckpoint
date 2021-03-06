# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `image_processing` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module ImageProcessing
end

class ImageProcessing::Builder
  include(::ImageProcessing::Chainable)

  def initialize(options); end

  def call!(**call_options); end
  def options; end

  private

  def instrument; end
  def pipeline_options; end
end

module ImageProcessing::Chainable
  def apply(operations); end
  def branch(**new_options); end
  def call(file = T.unsafe(nil), destination: T.unsafe(nil), **call_options); end
  def convert(format); end
  def instrumenter(&block); end
  def loader(**options); end
  def operation(name, *args, &block); end
  def saver(**options); end
  def source(file); end

  private

  def method_missing(name, *args, &block); end
end

ImageProcessing::Chainable::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

class ImageProcessing::Error < ::StandardError
end

module ImageProcessing::MiniMagick
  extend(::ImageProcessing::Chainable)

  class << self
    def valid_image?(file); end
  end
end

class ImageProcessing::MiniMagick::Processor < ::ImageProcessing::Processor
  def append(*args); end
  def composite(overlay = T.unsafe(nil), mask: T.unsafe(nil), mode: T.unsafe(nil), gravity: T.unsafe(nil), offset: T.unsafe(nil), args: T.unsafe(nil), **options, &block); end
  def crop(*args); end
  def define(options); end
  def limits(options); end
  def resize_and_pad(width, height, background: T.unsafe(nil), gravity: T.unsafe(nil), **options); end
  def resize_to_fill(width, height, gravity: T.unsafe(nil), **options); end
  def resize_to_fit(width, height, **options); end
  def resize_to_limit(width, height, **options); end
  def rotate(degrees, background: T.unsafe(nil)); end

  protected

  def magick; end

  private

  def color(value); end
  def convert_to_path(file, name); end
  def thumbnail(geometry, sharpen: T.unsafe(nil)); end

  class << self
    def load_image(path_or_magick, loader: T.unsafe(nil), page: T.unsafe(nil), geometry: T.unsafe(nil), auto_orient: T.unsafe(nil), **options); end
    def save_image(magick, destination_path, allow_splitting: T.unsafe(nil), **options); end
  end
end

ImageProcessing::MiniMagick::Processor::ACCUMULATOR_CLASS = MiniMagick::Tool

ImageProcessing::MiniMagick::Processor::SHARPEN_PARAMETERS = T.let(T.unsafe(nil), Hash)

module ImageProcessing::MiniMagick::Processor::Utils

  private

  def apply_define(magick, options); end
  def apply_options(magick, define: T.unsafe(nil), **options); end
  def disallow_split_layers!(destination_path); end

  class << self
    def apply_define(magick, options); end
    def apply_options(magick, define: T.unsafe(nil), **options); end
    def disallow_split_layers!(destination_path); end
  end
end

class ImageProcessing::Pipeline
  def initialize(options); end

  def call(save: T.unsafe(nil)); end
  def destination; end
  def destination_format; end
  def format; end
  def loader; end
  def operations; end
  def processor; end
  def saver; end
  def source_path; end

  private

  def call_processor(**options); end
  def create_tempfile; end
  def determine_format(file_path); end
  def handle_destination; end
  def source; end
end

ImageProcessing::Pipeline::DEFAULT_FORMAT = T.let(T.unsafe(nil), String)

class ImageProcessing::Processor
  def initialize(accumulator = T.unsafe(nil)); end

  def apply_operation(name, *args, &block); end
  def custom(&block); end

  class << self
    def accumulator(name, klass); end
    def apply_operation(accumulator, _arg1); end
    def call(source:, loader:, operations:, saver:, destination: T.unsafe(nil)); end
    def supports_resize_on_load?; end
  end
end

ImageProcessing::VERSION = T.let(T.unsafe(nil), String)

module ImageProcessing::Vips
  extend(::ImageProcessing::Chainable)

  class << self
    def valid_image?(file); end
  end
end

class ImageProcessing::Vips::Processor < ::ImageProcessing::Processor
  def composite(overlay, _mode = T.unsafe(nil), mode: T.unsafe(nil), gravity: T.unsafe(nil), offset: T.unsafe(nil), **options); end
  def remove(*args); end
  def resize_and_pad(width, height, gravity: T.unsafe(nil), extend: T.unsafe(nil), background: T.unsafe(nil), alpha: T.unsafe(nil), **options); end
  def resize_to_fill(width, height, **options); end
  def resize_to_fit(width, height, **options); end
  def resize_to_limit(width, height, **options); end
  def rotate(degrees, **options); end
  def set(*args); end
  def set_type(*args); end
  def set_value(*args); end

  protected

  def image; end

  private

  def convert_to_image(object, name); end
  def default_dimensions(width, height); end
  def thumbnail(width, height, sharpen: T.unsafe(nil), **options); end

  class << self
    def load_image(path_or_image, loader: T.unsafe(nil), autorot: T.unsafe(nil), **options); end
    def save_image(image, path, saver: T.unsafe(nil), quality: T.unsafe(nil), **options); end
    def supports_resize_on_load?; end
  end
end

ImageProcessing::Vips::Processor::ACCUMULATOR_CLASS = Vips::Image

ImageProcessing::Vips::Processor::SHARPEN_MASK = T.let(T.unsafe(nil), Vips::Image)

module ImageProcessing::Vips::Processor::Utils

  private

  def select_valid_loader_options(source_path, options); end
  def select_valid_options(operation_name, options); end
  def select_valid_saver_options(destination_path, options); end

  class << self
    def select_valid_loader_options(source_path, options); end
    def select_valid_options(operation_name, options); end
    def select_valid_saver_options(destination_path, options); end
  end
end
