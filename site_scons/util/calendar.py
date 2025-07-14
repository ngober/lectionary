def filter_calendar(cal, *basenames):
    filtered_seasons = [{ **s, 'weeks': [w for w in s['weeks'] if w['basename'] in basenames] } for s in cal]
    filtered_seasons = [s for s in filtered_seasons if len(s['weeks']) > 0]
    return filtered_seasons

