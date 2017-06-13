module ApplicationHelper

  def porciento_completado(campaign)
    return 0 unless campaign.donations.any?
    campaign.donations.sum(:monto).to_f/campaign.meta
  end

  def cant_recuadada(donations)
    return 0 unless donations.any?
    donations.sum(:monto)
  end

  def format_date(fecha)
  return nil unless fecha
  fecha.strftime("%B %e, %Y")
end
end
