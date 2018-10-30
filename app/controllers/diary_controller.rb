class DiaryController < ApplicationController
  def mokuji
    @diaries = Memory.all
  end

  def kaku
    @diary = Memory.new
  end

  def tsukuru
    @diary = Memory.new(sutorongu)
    if @diary.save
      redirect_to yomu_diary_path(@diary)
      # redirect_to "/diary/#{@diary.id}"
    else
      render action: :kaku
    end
  end

  def yomu
    @diary = Memory.find(params[:id])
  end

  def naosu
    @diary = Memory.find(params[:id])
  end

  def kakikae
    @diary = Memory.find(params[:id])
    if @diary.update(sutorongu)
      redirect_to yomu_diary_path(@diary)
      # redirect_to "/diary/#{@diary.id}"
    else
      render action: :kaku
    end
  end

  def kesu
    diary = Memory.find(params[:id])
    diary.destroy
    redirect_to diaries_path
    # redirect_to "/diary"
  end

  private
    def sutorongu
      params.require(:memory).permit(:title, :body)
    end

end
