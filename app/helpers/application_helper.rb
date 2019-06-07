module ApplicationHelper


  def default_meta_tags
    {
    	title:"<%= yield(:title) || 'マーケティングを根底から変える株式会社K`s Consulting' %>",
    	description: "株式会社K`s Consultingはテストマーケティングやコンサルティング、アポ代行を中心とした経営サポート事業を展開しております。",
    	keywords: "K`s Consulting,テストマーケティング,コンサルティング,アポ代行",
        canonical: request.original_url,  # 優先されるurl
        charset: "UTF-8"
    }
  end


end
