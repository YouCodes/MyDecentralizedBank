import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkMyBalance' : () => Promise<number>,
  'compoundInterest' : () => Promise<undefined>,
  'getMore' : (arg_0: number) => Promise<undefined>,
  'takeAway' : (arg_0: number) => Promise<undefined>,
}
