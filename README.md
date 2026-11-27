LEZDATU V38 - ALL-IN-ONE WINDOWS DEPLOYMENT

1. Back up your online records. Extract the full ZIP. Keep this package private: tools/staff.local contains the three account UIDs; it is excluded from Hosting and Git by default.
2. Confirm the three existing Firebase Authentication accounts belong to the intended staff. Email/Password and Anonymous authentication must be enabled; guest account creation must be allowed. This tool does not create accounts or change passwords.
3. Double-click DEPLOY_WINDOWS.cmd. Verify the displayed accounts and type YES once. Sign in to Firebase CLI if prompted using the project owner's Google account.
4. The launcher approves all three UIDs with a partial database update, reads back each grant, and deploys Hosting only if all grants match. No database rules, business records or other staff records are replaced. Admin and refiller roles have no rider ID; the rider account is linked to rider-primary (Rider 1). This assumes Rider 1 is active in your current station roster.
5. Open https://lezpadatu.web.app/?v=38 and press Ctrl+F5. Sign in with the existing staff email and password. If the station has not been initialized, sign in as admin and initialize once. Do not reset an existing station.
6. Test from separate devices: submit one customer order, open Refiller Trip Check-Out/In for the requested delivery date, confirm it is Unassigned, assign to Rider 1, verify visibility as Rider 1 and Admin. Admin or refiller must be online to process guest inbox requests. Pending water orders can be imported even with zero stock; physical stock must still be verified for dispatch.

Project: lezpadatu. Database: https://lezpadatu-default-rtdb.asia-southeast1.firebasedatabase.app. The existing V38 application, Firebase configuration and rule reference file are unchanged. The rules reference is NOT deployed. No further staff approval CMD is required. For any later account changes, edit tools/staff.local carefully or ask for a new package. No Rider 2 approval is created because no UID was provided.

If the launcher stops after approval but before Hosting, the approvals remain in Firebase. Fix the error and rerun; setting the same grants again is safe. Actual Firebase account permissions and Windows execution require live verification. Existing role-level shared-station data access and guest abuse protection limitations remain.
