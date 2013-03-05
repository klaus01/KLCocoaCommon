//
//  NSDate+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-3-5.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (Ext)

+ (NSDate *)encodeDateTimeWithYear:(int)year month:(int)month day:(int)day hour:(int)hour minute:(int)minute second:(int)second;

+ (NSString *)localizationStringWithWeekday:(int)weekday;

+ (NSDate *)dateWithString:(NSString *)string withFormat:(NSString *)format;
- (NSString *)stringWithFormat:(NSString *)format;

- (BOOL)isSameDayWithDate:(NSDate *)date;
- (BOOL)isSameMonthWithDate:(NSDate *)date;

/** example
 
 int y, M, d, w, h, m, s;
 [[NSData data] decodeForYear:&y month:&M day:&d weekday:&w hour:&h minute:&m second:&s];
 NSLog(@"%d-%d-%d %d %d:%d:%d", y, M, d, w, h, m, s);
 
 */
- (void)decodeForYear:(int *)year month:(int *)month day:(int *)day weekday:(int *)weekday hour:(int *)hour minute:(int *)minute second:(int *)second;
- (int)year;
- (int)month;
- (int)day;
- (int)weekday;


- (NSDate *)addYears:(NSInteger)years;
- (NSDate *)addMonths:(NSInteger)months;
- (NSDate *)addDays:(NSInteger)days;
- (NSDate *)addHours:(NSInteger)hours;
- (NSDate *)addMinutes:(NSInteger)minutes;
- (NSDate *)addSeconds:(NSInteger)seconds;

@end
