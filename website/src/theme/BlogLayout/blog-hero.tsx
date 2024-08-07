import clsx from 'clsx';
import { FC } from 'react';

type Props = { className?: string };

export const BlogHero: FC<Props> = ({ className }) => {
  return (
    <div
      className={clsx(
        'relative',
        'w-full',
        'landing-md:mx-auto',
        'w-full',
        'pt-4 blog-md:pt-12 pb-16 px-6',
        'bg-white dark:bg-win32-react-8',
        className
      )}
    >
      <div
        className={clsx(
          'blog-sm:max-w-[592px]',
          'blog-md:max-w-[656px]',
          'blog-lg:max-w-[896px]',
          'blog-max:max-w-[1200px]',
          'w-full',
          'mx-auto',
          'flex flex-col gap-4',
          'items-start blog-lg:items-center',
          'justify-start blog-lg:justify-center',
          'not-prose'
        )}
      >
        <h2
          className={clsx(
            'flex',
            'flex-wrap',
            'gap-2',
            'text-[32px] landing-sm:text-[56px]',
            'leading-[40px] landing-sm:leading-[72px]'
          )}
        >
          <div className={clsx('dark:text-gray-0 text-gray-900')}>win32 </div>
          <div
            className={clsx(
              'font-semibold',
              'dark:text-win32-cyan-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.25)]',
              'text-win32-blue drop-shadow-[0_0_30px_rgba(51,51,255,0.3)]',
              'whitespace-nowrap'
            )}
          >
            Technical Blog
          </div>
        </h2>
        <p
          className={clsx(
            'text-base',
            'text-start landing-md:text-center',
            'max-w-[588px]',
            'dark:text-gray-400 text-gray-600',
            'pb-2'
          )}
        >
          A resource for win32, Flutter and Dart ecosystem, and Windows
          development. Here, we publish insightful articles that demystify
          complex concepts, explore new trends, and provide helpful tips to
          enhance your coding journey.
        </p>
      </div>
    </div>
  );
};
