def filter_calendar(cal, *basenames):
    filtered_seasons = [{ **s, 'weeks': sorted([w for w in s['weeks'] if w['basename'] in basenames], key=lambda w: w['week']) } for s in cal]
    filtered_seasons = [s for s in filtered_seasons if len(s['weeks']) > 0]
    return filtered_seasons

