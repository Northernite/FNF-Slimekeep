local noteTypeColors = {
  ['Hurt Note'] = {{'253b46','ebe7ad','253b46'}}
}

function onCreatePost()
    setTimeBarColors('61d162', '253b46');
    setTextColor('scoreTxt', getHealthColor('dad'));
    setTextColor('botplayTxt', getHealthColor('dad'));
end