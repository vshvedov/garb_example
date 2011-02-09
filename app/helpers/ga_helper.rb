module GaHelper

  def dimensions_list
    dimensions_list = [
                        ['Visitor', ['browser', 'browserVersion', 'city', 'connectionSpeed', 'continent', 'country', 'date', 'day', 'daysSinceLastVisit',
                                      'flashVersion', 'hostname', 'hour', 'javaEnabled', 'language', 'latitude', 'longitude', 'month', 'networkDomain',
                                    'networkLocation', 'pageDepth', 'operatingSystem', 'operatingSystemVersion', 'region', 'screenColors', 'screenResolution',
                                  'subContinent', 'userDefinedValue', 'visitCount', 'visitLength', 'visitorType', 'week', 'year']],
                        ['Content', ['exitPagePath', 'landingPagePath', 'pagePath', 'pageTitle', 'secondPagePath']],
                        ['Internal', ['searchKeyword']],
                        ['Nav', ['nextPagePath', 'previousPagePath']],
                        ['Campaign', ['keyword', 'medium', 'referralPath', 'source']]
                      ]  
  end
  
  def metrics_list
    metrics_list = [
                    ['Visitor', ['bounces', 'entrances', 'exits', 'newVisits', 'pageviews', 'timeOnPage', 'timeOnSite', 'visitors', 'visits']],
                      ['Content', ['uniquePageviews']]
                    ]
  end
  
end
