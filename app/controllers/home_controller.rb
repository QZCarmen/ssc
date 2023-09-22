class HomeController < ApplicationController
  def index
    @pageSize=Array.new(Collection.all.count-1){|i|i+1}
    @array=[0]
    @pageSize.each do |p|
      if p%4==0
        @array.push(p)
      end
    end

    @collections = Collection.all
  end
end
