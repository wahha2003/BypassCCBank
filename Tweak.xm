%hook AppDelegate
- (void)exitApp {
	return;
}

%end


%hook CCB_5_BaseCellViewController
- (void)showWithTitle:(id)arg1 message:(id)arg2 btnTitleArray:(id)arg3 alertType:(int)arg4 callback:(id)arg5 {
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"] || [arg2 containsString:@"VPN"]) {
		return;
	} else {
		%orig;
	}
}
%end

%hook CCBViewController
- (void)showWithTitle:(id)arg1 message:(id)arg2 btnTitleArray:(id)arg3 alertType:(int)arg4 callback:(id)arg5 {
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"] || [arg2 containsString:@"VPN"]) {
		return;
	} else {
		%orig;
	}
}

%end
