//
//  NSDate+Ext.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-3-5.
//
//

#import "NSDate+Ext.h"

@implementation NSDate (Ext)

+ (NSDate *)encodeDateTimeWithYear:(int)year month:(int)month day:(int)day hour:(int)hour minute:(int)minute second:(int)second
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    comps.year = year;
    comps.month = month;
    comps.day = day;
    comps.hour = hour;
    comps.minute = minute;
    comps.second = second;
    NSDate *ret = [calendar dateFromComponents:comps];
    [comps release];
    [calendar release];
    return ret;
}

+ (NSString *)localizationStringWithWeekday:(int)weekday;
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *ret = [dateFormatter.weekdaySymbols objectAtIndex:weekday];
    [dateFormatter release];
    return ret;
}

+ (NSDate *)dateWithString:(NSString *)string withFormat:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSDate *ret = [dateFormatter dateFromString:string];
    [dateFormatter release];
    return ret;
}

- (NSString *)stringWithFormat:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSString *ret = [dateFormatter stringFromDate:self];
    [dateFormatter release];
    return ret;
}

- (BOOL)isSameDayWithDate:(NSDate *)date
{
    int y1, m1, d1, y2, m2, d2, t;
    [self decodeForYear:&y1 month:&m1 day:&d1 weekday:&t hour:&t minute:&t second:&t];
    [date decodeForYear:&y2 month:&m2 day:&d2 weekday:&t hour:&t minute:&t second:&t];
    return (y1 == y2) && (m1 == m2) && (d1 == d2);
}

- (BOOL)isSameMonthWithDate:(NSDate *)date
{
    int y1, m1, y2, m2, t;
    [self decodeForYear:&y1 month:&m1 day:&t weekday:&t hour:&t minute:&t second:&t];
    [date decodeForYear:&y2 month:&m2 day:&t weekday:&t hour:&t minute:&t second:&t];
    return (y1 == y2) && (m1 == m2);
}

- (void)decodeForYear:(int *)year month:(int *)month day:(int *)day weekday:(int *)weekday hour:(int *)hour minute:(int *)minute second:(int *)second
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *comps = [calendar components:unitFlags fromDate:self];
    *year = comps.year;
    *month = comps.month;
    *day = comps.day;
    *weekday = comps.weekday;
    *hour = comps.hour;
    *minute = comps.minute;
    *second = comps.second;
    [calendar release];
}

- (int)year
{
    int r, t;
    [self decodeForYear:&r month:&t day:&t weekday:&t hour:&t minute:&t second:&t];
    return r;
}

- (int)month
{
    int r, t;
    [self decodeForYear:&t month:&r day:&t weekday:&t hour:&t minute:&t second:&t];
    return r;
}

- (int)day
{
    int r, t;
    [self decodeForYear:&t month:&t day:&r weekday:&t hour:&t minute:&t second:&t];
    return r;
}

- (int)weekday
{
    int r, t;
    [self decodeForYear:&t month:&t day:&t weekday:&r hour:&t minute:&t second:&t];
    return r;
}

- (NSDate *)addYears:(NSInteger)years
{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    comps.year = years;
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *ret = [calender dateByAddingComponents:comps toDate:self options:0];
    [comps release];
    [calender release];
    return ret;
}

- (NSDate *)addMonths:(NSInteger)months
{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    comps.month = months;
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *ret = [calender dateByAddingComponents:comps toDate:self options:0];
    [comps release];
    [calender release];
    return ret;
}

- (NSDate *)addDays:(NSInteger)days
{
    return [NSDate dateWithTimeInterval:days * 24 * 60 * 60 sinceDate:self];
}

- (NSDate *)addHours:(NSInteger)hours
{
    return [NSDate dateWithTimeInterval:hours * 60 * 60 sinceDate:self];
}

- (NSDate *)addMinutes:(NSInteger)minutes
{
    return [NSDate dateWithTimeInterval:minutes * 60 sinceDate:self];
}

- (NSDate *)addSeconds:(NSInteger)seconds
{
    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
}

@end
